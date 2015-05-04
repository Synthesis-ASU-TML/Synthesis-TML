/*
 *  AudioSuperclass.h
 *  Root class for audio synthesizers, for OSX or Linux
 *
 *  Made by Michael Krzyzaniak at Arizona State University's
 *  School of Arts, Media + Engineering in Spring of 2013
 *  mkrzyzan@asu.edu
 */


#ifndef __AUDIO_SUPERCLASS__
#define __AUDIO_SUPERCLASS__ 1

#if defined(__cplusplus)
extern "C"{
#endif   //(__cplusplus)

#if defined __APPLE__
#include <AudioToolbox/AudioToolbox.h>
#elif defined __linux__
#include <stdlib.h>
#include <signal.h>
#include <pthread.h>
#include <alsa/asoundlib.h>
#endif

//#include "MKAiff.h"
//#include "fastsin.h"
#define SIN_TWO_PI 0xFFFFFFFF

#define BOOL int
#define NO   0
#define YES  (!NO)

#define AU_NUM_AUDIO_BUFFERS  3
#define AU_NUM_CHANNELS       1
#define AU_BUFFER_NUM_BYTES   4096  //in bytes... numSamples will be AU_BUFFER_SIZE / sizeof(auSample_t);
#define AU_BUFFER_NUM_SAMPLES (AU_BUFFER_NUM_BYTES / sizeof(auSample_t))
#define AU_BUFFER_NUM_FRAMES  (AU_BUFFER_NUM_SAMPLES * AU_NUM_CHANNELS)
#define AU_SAMPLE_RATE        44100.0

typedef  float auSample_t;
typedef  int (*auAudioCallback_t) (void* SELF, auSample_t* buffer, int numFrames, int numChannels);


#if defined __APPLE__
#define AUDIO_PLATFORM_SPECIFIC_GUTS                          \
  AudioQueueRef               queue                         ; \
  AudioQueueBufferRef         buffers[AU_NUM_AUDIO_BUFFERS] ; \
  AudioStreamBasicDescription dataFormat                    ; \
  
#elif defined __linux__                                    
#define AUDIO_PLATFORM_SPECIFIC_GUTS                          \
  snd_pcm_t                  *device                        ; \
  auSample_t                 *sampleBuffer                  ; \
  pthread_t                   thread                        ; \
  int                         threadIsRunning               ; \
  int                         threadShouldContinueRunning   ; \
  unsigned long int           bufferNumFrames               ; \
  unsigned int                numChannels                   ;
  
#define AU_SPEAKER_DEVICE_NAME "default"  
#endif                                                        

#define AUDIO_GUTS                                            \
  AUDIO_PLATFORM_SPECIFIC_GUTS                                \
  BOOL                        isPlaying                     ; \
  float                       masterVolume                  ; \
  float                       targetMasterVolume            ; \
  float                       masterVolumeSmoothing         ; \
  float                       oneMinusMasterVolumeSmoothing ; \
  auAudioCallback_t           audioCallback                 ; \
  
typedef struct OpaqueAudioStruct Audio;


const extern double AU_TWO_PI_OVER_SAMPLE_RATE;

#define AU_RANDOM(min, max)  (((random() / (long double)RAND_MAX)) * ((max) - (min)) + (min))
#define AU_MIDI2CPS(x)   (440 * pow(2, ((x)-69) / 12.0))
#define AU_MIDI2FREQ(x)  (AU_MIDI2CPS(x) * SIN_TWO_PI / (float)AU_SAMPLE_RATE)
#define AU_CPS2MIDI(x)   (69 + 12.0 * log2((x) / 440.0))
#define AU_FREQ2MIDI(x)  AU_CPS2MIDI(x) / (SIN_TWO_PI / (float)AU_SAMPLE_RATE);
#define AU_CONSTRAIN(x, MIN, MAX) ((x) = ((x) < (MIN)) ? (MIN) : ((x) > (MAX)) ? (MAX) : (x))



/* Subcalsses call these in their own Alloc / Destroy */
/* routines. Users call the subclasses' ruotines,     */
/* not these.                                         */
Audio*  auAlloc              (int sizeofstarself, auAudioCallback_t callback);
Audio*  auDestroy            (Audio* self);

/* cast subcalsses to (Audio* and call these)         */
BOOL    auPlay               (Audio* self);
BOOL    auPause              (Audio* self);
BOOL    auTogglePlayPause    (Audio* self);
BOOL    auIsPlaying          (Audio* self);
float   auMasterVolume       (Audio* self);
void    auSetMasterVolume    (Audio* self, float volume);
void    auSetMasterVolumeSmoothing(Audio* self, float smoothing);
float   auMasterVolumeSmoothing(Audio* self);

#if defined(__cplusplus)
}
#endif   //(__cplusplus)

#endif// __AUDIO_SUPERCLASS__
