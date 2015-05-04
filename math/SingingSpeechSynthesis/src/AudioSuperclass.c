/*
 *  AudioSuperclass.c
 *  Root class for audio synthesizers, for OSX or Linux
 *
 *  Made by Michael Krzyzaniak at Arizona State University's
 *  School of Arts, Media + Engineering in Spring of 2013
 *  mkrzyzan@asu.edu
 */



//#define RECORD_MODE 1


#include <math.h>
#include <stdio.h>
#include "AudioSuperclass.h"

const double AU_TWO_PI_OVER_SAMPLE_RATE = SIN_TWO_PI / AU_SAMPLE_RATE;

#if defined __APPLE__
void  auAudioCallback(void *SELF, AudioQueueRef queue, AudioQueueBufferRef buffer);
#elif defined __linux__
void* auAudioCallback(void* SELF);
#endif


/*OpaqueAudioStruct----------------------------------------*/
struct OpaqueAudioStruct
{
  AUDIO_GUTS;
};

/*auNew---------------------------------------------------*/
Audio* auAlloc(int sizeofstarself, auAudioCallback_t callback)
{
  Audio* self = (Audio*)calloc(1, sizeofstarself);

  if(self != NULL)
    {
      self->isPlaying = NO;
      self->audioCallback                = callback;
      self->targetMasterVolume           = 1;
      auSetMasterVolumeSmoothing(self, 0.9999);
      
#if defined __APPLE__
      int i;
      OSStatus error;
      self->dataFormat.mSampleRate       = AU_SAMPLE_RATE;
      self->dataFormat.mBytesPerPacket   = 4 * AU_NUM_CHANNELS  ;
      self->dataFormat.mFramesPerPacket  = 1             ;
      self->dataFormat.mBytesPerFrame    = 4 * AU_NUM_CHANNELS  ;
      self->dataFormat.mBitsPerChannel   = 32            ;
      self->dataFormat.mChannelsPerFrame = AU_NUM_CHANNELS      ;
      self->dataFormat.mFormatID         = kAudioFormatLinearPCM;
      //self->dataFormat.mFormatFlags      = kLinearPCMFormatFlagIsSignedInteger | kLinearPCMFormatFlagIsPacked;
      self->dataFormat.mFormatFlags      = kLinearPCMFormatFlagIsFloat;
      error = AudioQueueNewOutput(&(self->dataFormat), auAudioCallback, self, NULL, NULL, 0, &(self->queue));
      
      if(error) 
        {
          fprintf(stderr, "Audio.c: unable to allocate Audio queue\n"); 
          return auDestroy(self);
        }
      else //(!error)
        {
          for(i=0; i<AU_NUM_AUDIO_BUFFERS; i++)
            {
              error = AudioQueueAllocateBuffer(self->queue, AU_BUFFER_NUM_BYTES * AU_NUM_CHANNELS, &((self->buffers)[i]));
              if(error) 
                {
                  self = auDestroy(self);
                  fprintf(stderr, "Audio.c: allocate buffer error\n");
                  break;
                }
            }
        }
        
#elif defined __linux__
      int error = 0;

      snd_pcm_hw_params_t  *hardwareParameters;
      snd_pcm_hw_params_alloca(&hardwareParameters);

      error = snd_pcm_open(&(self->device), AU_SPEAKER_DEVICE_NAME, SND_PCM_STREAM_PLAYBACK, 0);
      if(error < 0) fprintf(stderr, "Audio.c: Unable to open speaker device %s: %s\n", AU_SPEAKER_DEVICE_NAME, snd_strerror(error));
            
      if(error >= 0)
        {
          error = snd_pcm_hw_params_any(self->device, hardwareParameters);
            if(error < 0) fprintf(stderr, "Audio.c: Unable to get a generic hardware configuration: %s\n", snd_strerror(error));
        }
      if(error >= 0)
        {
          error = snd_pcm_hw_params_set_access(self->device, hardwareParameters, SND_PCM_ACCESS_RW_INTERLEAVED);
          if(error < 0) fprintf(stderr, "Audio.c: Device does not support interleaved audio access: %s\n", snd_strerror(error));
        }
      if(error >= 0)
        {
          error = snd_pcm_hw_params_set_format(self->device, hardwareParameters, /*SND_PCM_FORMAT_S16*/ SND_PCM_FORMAT_FLOAT) ;
          if(error < 0) fprintf(stderr, "Audio.c: Unable to set sample format: %s\n", snd_strerror(error));
        }
      if(error >= 0)
        {
          self->numChannels = AU_NUM_CHANNELS;
          error = snd_pcm_hw_params_set_channels_near(self->device, hardwareParameters, &self->numChannels);
          if(error < 0) fprintf(stderr, "Audio.c: unable to set the number of channels to %i: %s\n", self->numChannels, snd_strerror(error));
          else if(self->numChannels != AU_NUM_CHANNELS)
            fprintf(stderr, "Audio.c: device does not support %u numChannels, %i will be used instead\n", AU_NUM_CHANNELS, self->numChannels);  
        }
      if(error >= 0)
        {
          unsigned int sampleRate = AU_SAMPLE_RATE;
          error = snd_pcm_hw_params_set_rate_near(self->device, hardwareParameters, &sampleRate, 0);
          if(error < 0) fprintf(stderr, "Audio.c: Unable to set the sample rate to %u: %s\n", sampleRate, snd_strerror(error));
          else if(sampleRate != AU_SAMPLE_RATE)
            fprintf(stderr, "Audio.c: device does not support %i sample rate, %u will be used instead\n", (int)AU_SAMPLE_RATE, sampleRate);
        }
      if(error >= 0)
        {
          int dir = 0;
          self->bufferNumFrames = AU_BUFFER_NUM_FRAMES; //the buffer I give to ALSA
          error = snd_pcm_hw_params_set_period_size_near(self->device, hardwareParameters, &(self->bufferNumFrames), &dir);
          if(error < 0) fprintf(stderr, "Audio.cpp: Unable to set the sample buffer size to %lu: %s\n", self->bufferNumFrames, snd_strerror(error));
          else if(self->bufferNumFrames != AU_BUFFER_NUM_FRAMES)
            fprintf(stderr, "Audio.c: device does not support %i period size, %lu will be used instead\n", AU_BUFFER_NUM_FRAMES, self->bufferNumFrames);
        }
      if(error >= 0)
        {
          unsigned long int internalBufferNumFrames = self->bufferNumFrames * AU_NUM_AUDIO_BUFFERS; //the buffer ALSA uses internally
          error = snd_pcm_hw_params_set_buffer_size_near(self->device, hardwareParameters, &internalBufferNumFrames);
          if(error < 0) fprintf(stderr, "Audio.c: Unable to set the internal buffer size to %lu: %s\n", internalBufferNumFrames, snd_strerror(error));
          else if(internalBufferNumFrames != AU_NUM_AUDIO_BUFFERS * self->bufferNumFrames)
              fprintf(stderr, "Audio.c: device does not support %lu internal buffer size, %lu will be used instead\n", AU_NUM_AUDIO_BUFFERS * self->bufferNumFrames, internalBufferNumFrames);
        }
      if(error >= 0)
        {
          error = snd_pcm_hw_params(self->device, hardwareParameters);
          if(error < 0) fprintf(stderr, "Audio.c: Unable to load the hardware parameters into the device: %s\n", snd_strerror(error));
        }
      if(error >= 0)
       {
         unsigned int size = sizeof(auSample_t) * self->numChannels * self->bufferNumFrames;
         self->sampleBuffer = (auSample_t*)malloc(size);
         if(self->sampleBuffer == NULL)
           {
              error = -1;
              perror("Audio.c: Unable to allocate audio buffers \n");
           }
       }
      if (error < 0) self = auDestroy(self);
#endif
    }
  else perror("Audio.c: Unable to create new Audio object");
  
  srandom(time(NULL));

  return self;
}

/*auDestroy-----------------------------------------------*/
Audio* auDestroy(Audio* self)
{
  if(self != NULL)
    {
      if(self->isPlaying) auPause(self);

#if defined __APPLE__
      int i;
      for(i=0; i<AU_NUM_AUDIO_BUFFERS; i++)
        if(self->buffers[i] != NULL)
          AudioQueueFreeBuffer(self->queue, self->buffers[i]);
          
      if(self->queue != NULL)
        AudioQueueDispose(self->queue, YES);
      
#elif defined __linux__
      if(self->device != NULL)
        {
          snd_pcm_close(self->device);
          self->device = NULL;
        }
      if(self->sampleBuffer)
        free(self->sampleBuffer);
      //if(self->thread != NULL)
        //pthread_detach(self->thread);
#endif

      free(self);
    }
  return (Audio*)NULL;
}

/*auStart-------------------------------------------------*/
BOOL auPlay(Audio* self)
{ 
  if(!self->isPlaying)
    {

#ifdef __APPLE__
      int i;
      for(i=0; i<AU_NUM_AUDIO_BUFFERS; i++)
        auAudioCallback(self, self->queue, self->buffers[i]);
    
      OSStatus error = AudioQueueStart(self->queue, NULL);
      if(error) fprintf(stderr, "Audio.c: unable to start queue\n");

#elif defined __linux__
      int error = pthread_create(&(self->thread), NULL, auAudioCallback, self);
      if(error != 0) perror("Audio.c: error creating Audio thread");

#endif
      else self->isPlaying = YES;
    }
    
  return self->isPlaying;
}

/*auPause--------------------------------------------------*/
BOOL auPause(Audio* self)
{
  
  if(self->isPlaying)
    {

#ifdef __APPLE__
      OSStatus error = AudioQueueFlush(self->queue);
      if(!error)
        error = AudioQueueStop (self->queue, YES);
      self->isPlaying = (error != 0);

#elif defined __linux__
      self->threadShouldContinueRunning = NO;
      if(self->threadIsRunning)
        pthread_join(self->thread, NULL);
      self->isPlaying = NO;
      
#endif
    }
  return self->isPlaying;
}

/*auTogglePlayPause---------------------------------------*/
BOOL    auTogglePlayPause     (Audio* self)
{
  return (self->isPlaying) ? auPause(self) : auPlay(self);
}

/*auMasterVolume------------------------------------------*/
float  auMasterVolume   (Audio* self)
{
  return sqrt(self->targetMasterVolume);
}

/*auSetMasterVolume---------------------------------------*/
void    auSetMasterVolume(Audio* self, float volume)
{
  if(volume > 1) volume = 1;
  if(volume < 0) volume = 0;
  volume *= volume;
  self->targetMasterVolume = volume;
}

/*auSetMasterVolumeSmoothing-------------------------------*/
void auSetMasterVolumeSmoothing(Audio* self, float smoothing)
{
  //strange, I know.
  self->masterVolumeSmoothing         = 1 - smoothing;
  self->oneMinusMasterVolumeSmoothing = smoothing;
}

/*auMasterVolumeSmoothing----------------------------------*/
float   auMasterVolumeSmoothing(Audio* self)
{
  return self->oneMinusMasterVolumeSmoothing;
}

/*auisPlaying----------------------------------------------*/
BOOL    auIsPlaying      (Audio* self)
{
  return self->isPlaying;
}

/*auPlayFile------------------------------------------------*/
/*
void    auPlayFile       (Audio* self, const char* path)
{
  char* command;
  asprintf(&command, "afplay %s&", path);
  system(command);
}
*/

/*auAudioCallback-------------------------------------------*/
#if defined __APPLE__
void  auAudioCallback(void *SELF, AudioQueueRef queue, AudioQueueBufferRef buffer)
{
  Audio* self = (Audio*) SELF;
  self->audioCallback(SELF, (auSample_t*)buffer->mAudioData, (buffer->mAudioDataBytesCapacity / self->dataFormat.mBytesPerFrame), self->dataFormat.mChannelsPerFrame);
  buffer->mAudioDataByteSize = buffer->mAudioDataBytesCapacity;
  AudioQueueEnqueueBuffer(queue, buffer, 0, NULL);
}
#elif defined __linux__
BOOL auTransferData(Audio* self, snd_pcm_sframes_t (*transfer)(snd_pcm_t*, void*, snd_pcm_uframes_t));

void* auAudioCallback(void* SELF)
{
  Audio* self = (Audio*)SELF;
  self->threadIsRunning = self->threadShouldContinueRunning = YES;
  signal(SIGPIPE, SIG_IGN);
  int success;
  
  while(self->threadShouldContinueRunning)
    {
      self->audioCallback(SELF, self->sampleBuffer, self->bufferNumFrames, self->numChannels);
      success = auTransferData(self, (snd_pcm_sframes_t (*)(snd_pcm_t*, void*, snd_pcm_uframes_t)) snd_pcm_writei);

      if(!success) break;
    }
  self->threadIsRunning = NO;
  return NULL;
}

BOOL auTransferData(Audio* self, snd_pcm_sframes_t (*transfer)(snd_pcm_t*, void*, snd_pcm_uframes_t))
{
  int    numFramesTransferred = 0, error = 0;
  int    numFramesLeft        = self->bufferNumFrames;
  auSample_t*    p            = self->sampleBuffer;

   while((numFramesLeft > 0) && self->threadShouldContinueRunning)
     {
       error = numFramesTransferred = transfer(self->device, p, numFramesLeft);

       if(numFramesTransferred < 0)
         {  
           fprintf(stderr, "Audio.c: audio device error while transferring samples: %s, attempting to recover... ", snd_strerror(error));
           switch(error)
            {
              case -EPIPE:   //overflow / underflow
                snd_pcm_wait(self->device, 100);
                //printf("Number of Available Frames: %i\n", error = snd_pcm_avail(device[deviceIndex]));  
                //if(error < 0) printf("\terror: %s\n", snd_strerror(error));
                if((error = snd_pcm_avail(self->device)) < 0)   //broken pipe
                  usleep(10000);                                       //wait for more samples to come
                else numFramesLeft = 0;                                //overrun, skip remaining samples;

                error = snd_pcm_prepare(self->device); 
                break;
             
             case -ESTRPIPE: 
              while(((error = snd_pcm_resume(self->device)) == -EAGAIN) && self->threadShouldContinueRunning) 
                sleep(1);
              if(error == -ENOSYS) error = snd_pcm_prepare(self->device); 
              break;
             
           }
           if(error < 0)
             {
               fprintf(stderr, "Aborting\n");
               self->threadShouldContinueRunning = NO;
               break;
             }
           else
             {
               fprintf(stderr, "Okay\n");
               numFramesTransferred = 0;
             } 
         }
        p +=  numFramesTransferred * self->numChannels;
        numFramesLeft -= numFramesTransferred;
     }
  return (numFramesLeft == 0) ? YES : NO;     
}

#endif







