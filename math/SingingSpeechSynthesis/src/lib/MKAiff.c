/*_--__-_--__----_----_--__--__----------------------------------------------------------
|  \/  | |/ /   / \  (_)/ _|/ _| ___ 
| |\/| | ' /   / _ \ | | |_| |_ / __|
| |  | | . \  / ___ \| |  _|  _| (__ 
|_|  |_|_|\_\/_/   \_\_|_| |_|(_)___|                                          
Beta, 1.0 May 03 2011
Modified Nov 30 2012 to fix bugs pertaining to 64 bit pointers   
Modified MAY 30 2013 to redefine multi-char consts as hex
Modified JUN 16 2013 to add makeMono() and resample(), and use binary mode to read / write files.
Modified AUG  1 2013 to fix a bug in resample().  
---------------------------------------------------------------------------------------*/
#include "MKAiff.h"
//#define AIFF_PRINT_DEBUG_MESSAGES

/*--_------__-_--------------------------------------------------------------------------
 __| |___ / _(_)_ _  ___ ___
/ _` / -_)  _| | ' \/ -_|_-<
\__,_\___|_| |_|_||_\___/__/
---------------------------------------------------------------------------------------*/
#define EA_IFF85_NAME_CHUNK_ID       0x4E414D45	//'NAME'
#define EA_IFF85_AUTHOR_CHUNK_ID     0x41555448	//'AUTH'
#define EA_IFF85_COPYRIGHT_CHUNK_ID  0x28632920	//'(c) '
#define EA_IFF85_ANNOTATION_CHUNK_ID 0x414E4E4F	//'ANNO'

#define AIFF_FORM_CHUNK_ID           0x464F524D	//'FORM'
#define AIFF_FORM_TYPE_ID            0x41494646	//'AIFF'
#define AIFF_COMMON_CHUNK_ID         0x434F4D4D	//'COMM'
#define AIFF_SOUND_CHUNK_ID          0x53534E44	//'SSND'
#define AIFF_MARKER_CHUNK_ID         0x4D41524B	//'MARK'
#define AIFF_INSTRUMENT_CHUNK_ID     0x494E5354	//'INST'
#define AIFF_MIDI_CHUNK_ID           0x4D494449	//'MIDI'
#define AIFF_RECORDING_CHUNK_ID      0x41455344	//'AESD'
#define AIFF_APPLICATION_CHUNK_ID    0x4150504C	//'APPL'
#define AIFF_COMMENT_CHUNK_ID        0x434F4D54	//'COMT'

/*--------_----------_------------_--------_---------------_---_-------------------------
 _ __ _ _(_)_ ____ _| |_ ___   __| |___ __| |__ _ _ _ __ _| |_(_)___ _ _  ___
| '_ \ '_| \ V / _` |  _/ -_) / _` / -_) _| / _` | '_/ _` |  _| / _ \ ' \(_-<
| .__/_| |_|\_/\__,_|\__\___| \__,_\___\__|_\__,_|_| \__,_|\__|_\___/_||_/__/
|_|                                                                          
---------------------------------------------------------------------------------------*/ 
int aiffThisSystemIsLittleEndian          (                               );
void aiffByteSwap16                       (uint16_t*                 value);
void aiffByteSwap32                       (uint32_t*                 value);
void aiffByteSwap24                       (uint24_t*                 value);
void aiffSwapFormChunkByteOrder           (mkAiffFormChunk_t*        chunk);
void aiffSwapCommonChunkByteOrder         (mkAiffCommonChunk_t*      chunk);
void aiffSwapSoundChunkByteOrder          (mkAiffSoundChunk_t*       chunk);
void aiffSwapMarkerByteOrder              (mkAiffMarker_t*           chunk);
void aiffSwapMarkerChunkByteOrder         (mkAiffMarkerChunk_t*      chunk);
void aiffSwapLoopByteOrder                (mkAiffLoop_t*             chunk);
void aiffSwapInstrumentChunkByteOrder     (mkAiffInstrumentChunk_t*  chunk);
void aiffSwapMIDIChunkByteOrder           (mkAiffMIDIChunk_t*        chunk);
void aiffSwapRecordingChunkByteOrder      (mkAiffRecordingChunk_t*   chunk);
void aiffSwapAppicationChunkChunkByteOrder(mkAiffApplicationChunk_t* chunk);
void aiffSwapCommentByteOrder             (mkAiffComment_t*          chunk);
void aiffSwapCommentChunkByteOrder        (mkAiffCommentChunk_t*     chunk);
void aiffSwapTextChunkByteOrder           (mkEAiff85TextChunk_t*     chunk);
void aiffSwapBufferByteOrder              (void* buffer, int bytesPerSample, int numBytes);

//these return 1 on success, 0 otherwise
int aiffExtractFormChunkFromFile(mkAiffFormChunk_t* formChunk, FILE* file);
int aiffExtractCommonChunkFromFile              (MKAiff* aiff, FILE* file);
int aiffExtractSoundChunkAndSoundBufferFromFile (MKAiff* aiff, FILE* file, void** returnedBuffer, int* sizeOfReturnedBuffer);
int aiffExtractCommentChunkFromFile             (MKAiff* aiff, FILE* file);
int aiffExtractMarkerChunkFromFile              (MKAiff* aiff, FILE* file);
int aiffExtractInstrumentChunkFromFile          (MKAiff* aiff, FILE* file);
int aiffExtractMIDIChunkFromFile                (MKAiff* aiff, FILE* file);
int aiffExtractRecordingChunkFromFile           (MKAiff* aiff, FILE* file);
int aiffExtractApplicationChunkFromFile         (MKAiff* aiff, FILE* file);
int aiffExtractTextChunkFromFile                (MKAiff* aiff, FILE* file, aiffChunkIdentifier_t chunkID);
int aiffExtractGenericChunkFromFile             (MKAiff* aiff, FILE* file, aiffChunkIdentifier_t chunkID);
int aiffExtractAnnotationChunkFromFile          (MKAiff* aiff, FILE* file);

void aiffWriteFormChunkToFile                   (MKAiff* aiff, FILE* file);
void aiffWriteCommonChunkToFile                 (MKAiff* aiff, FILE* file);
void aiffWriteSoundChunkAndSoundBufferToFile    (MKAiff* aiff, FILE* file);
void aiffWriteCommentChunkToFile                (MKAiff* aiff, FILE* file);
void aiffWriteMarkerChunkToFile                 (MKAiff* aiff, FILE* file);
void aiffWriteInstrumentChunkToFile             (MKAiff* aiff, FILE* file);
void aiffWriteMIDIChunksToFile                  (MKAiff* aiff, FILE* file);
void aiffWriteRecordingChunkToFile              (MKAiff* aiff, FILE* file);
void aiffWriteApplicationChunksChunkToFile      (MKAiff* aiff, FILE* file);      
void aiffWriteTextChunkToFile                   (MKAiff* aiff, FILE* file, mkEAiff85TextChunk_t* textChunk);
void aiffWriteAnnotationChunksToFile            (MKAiff* aiff, FILE* file);
void aiffWriteGenericChunksToFile               (MKAiff* aiff, FILE* file);

typedef enum
{
  aiffMarkerCriterionMarkerID,
  aiffMarkerCriterionName
}mkAiffMarkerCriterion_t;

mkAiffMarker_t* aiffFindMarkerWithCriterion     (MKAiff* aiff, mkAiffMarkerCriterion_t criterion, void* value);


mkEAiff85TextChunk_t* aiffCreateTextChunk(aiffChunkIdentifier_t chunkID, char* text);

void aiffAppendEntryToList(mkAiffListEntry_t* newEntry, mkAiffListEntry_t* firstEntry); 

MKAiff* aiffAllocate();
int aiffAllocateSoundBuffer(MKAiff* aiff, int numSamples);

int aiffNumBytesInList(mkAiffSizableListEntry_t* listEntry, int numBytesPerEntryNotCountedInChunkSize);

int aiffAddSamplesAtPlayhead(MKAiff* aiff, 
                            void*                           buffer, 
                            int                             numSamples, 
                            aiffYesOrNo_t                   isFloat,
                            mkAiffFloatingPointSampleType_t floatType,
                            int                             bytesPerSample, 
                            int                             bitsPerSample, 
                            aiffYesOrNo_t                   leftAligned, 
                            aiffYesOrNo_t                   isSigned, 
                            aiffYesOrNo_t                   overwrite);

/*---------_--------------------_--------------------------------------------------------
| |__ _  _| |_ ___   ___ _ _ __| |___ _ _ 
| '_ \ || |  _/ -_) / _ \ '_/ _` / -_) '_|
|_.__/\_, |\__\___| \___/_| \__,_\___|_|  
      |__/                                
---------------------------------------------------------------------------------------*/  


//thisSystemIsLittleEndian---------------------------------------------------------------
int aiffThisSystemIsLittleEndian()
{
  int test = 1;
  return *((char*)&test);
}

//byteSwap16-----------------------------------------------------------------------------
void aiffByteSwap16(uint16_t* value)
{
  *value = ((*value << 8) | (*value >> 8));
}

//byteSwap32-----------------------------------------------------------------------------
void aiffByteSwap32(uint32_t* value)
{
  char *array = (char*)value;
  unsigned char storage;
  char i = 0;
  char j = sizeof(*value);
  
  for(i=0; i<(j/2); i++)
    {
    storage = *(array + i);
    *(array + i) = *(array + (j-i-1));
    *(array + (j-i-1)) = storage;
    }
  *value = *((int*)array);
}

//byteSwap24-----------------------------------------------------------------------------
void aiffByteSwap24(uint24_t* value)
{ 
  unsigned char storage;
  storage = (*value)[0];
  (*value)[0] = (*value)[2];
  (*value)[2] = storage;
}

//swapFormChunkByteOrder-----------------------------------------------------------------
void aiffSwapFormChunkByteOrder(mkAiffFormChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize));
  aiffByteSwap32(&(chunk->formTypeID));
}

//swapCommonChunkByteOrder---------------------------------------------------------------
void aiffSwapCommonChunkByteOrder(mkAiffCommonChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize));
  aiffByteSwap16((uint16_t*)&(chunk->numChannels));
  aiffByteSwap32(&(chunk->numSampleFrames));
  aiffByteSwap16((uint16_t*)&(chunk->bitsPerSample));
}

//swapSoundChunkByteOrder----------------------------------------------------------------
void aiffSwapSoundChunkByteOrder(mkAiffSoundChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize));
  aiffByteSwap32(&(chunk->offset));
  aiffByteSwap32(&(chunk->blockSize));
}

//swapMarkerByteOrder--------------------------------------------------------------------
void aiffSwapMarkerByteOrder(mkAiffMarker_t* chunk)
{
  aiffByteSwap16(&(chunk->markerID));
  aiffByteSwap32(&(chunk->positionInFrames));
}

//swapMarkerChunkByteOrder-----------------------------------------------------------------
void aiffSwapMarkerChunkByteOrder(mkAiffMarkerChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize));
  aiffByteSwap16(&(chunk->numMarkers));
}

//swapLoopByteOrder----------------------------------------------------------------------
void aiffSwapLoopByteOrder(mkAiffLoop_t* chunk)
{
  aiffByteSwap16((uint16_t*)&(chunk->playMode));
  aiffByteSwap16(&(chunk->startMarkerID));
  aiffByteSwap16(&(chunk->endMarkerID));
}

//swapInstrumentChunkByteOrder-----------------------------------------------------------
void aiffSwapInstrumentChunkByteOrder(mkAiffInstrumentChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize));
  aiffByteSwap16((uint16_t*)&(chunk->decibelsGain));
  aiffSwapLoopByteOrder(&(chunk->sustainLoop));
  aiffSwapLoopByteOrder(&(chunk->releaseLoop));
}

//swapMIDIChunkByteOrder-----------------------------------------------------------------
void aiffSwapMIDIChunkByteOrder(mkAiffMIDIChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize));
}

//swapRecordingChunkByteOrder------------------------------------------------------------
void aiffSwapRecordingChunkByteOrder(mkAiffRecordingChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize)); 
}

//swapAppicationChunkChunkByteOrder------------------------------------------------------
void aiffSwapAppicationChunkChunkByteOrder(mkAiffApplicationChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize));
  aiffByteSwap32(&(chunk->applicationSignature));
}

//swapCommentByteOrder-------------------------------------------------------------------
void aiffSwapCommentByteOrder(mkAiffComment_t* chunk)
{
  aiffByteSwap32(&(chunk->timeStamp));
  aiffByteSwap16(&(chunk->markerID));
  aiffByteSwap16(&(chunk->numChars));
}

//swapCommentChunkByteOrder--------------------------------------------------------------
void aiffSwapCommentChunkByteOrder(mkAiffCommentChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize));
  aiffByteSwap16(&(chunk->numComments));
}

//swapTextChunkByteOrder-----------------------------------------------------------------
void aiffSwapTextChunkByteOrder(mkEAiff85TextChunk_t* chunk)
{
  aiffByteSwap32(&(chunk->chunkID));
  aiffByteSwap32((uint32_t*)&(chunk->chunkSize));
}

//swapBufferByteOrder--------------------------------------------------------------------
void aiffSwapBufferByteOrder(void* buffer, int bytesPerSample, int numBytes)
{
  while(numBytes)
    {
      switch(bytesPerSample)
	{
	case 1: break;
	case 2: aiffByteSwap16((uint16_t*)buffer); break;
	case 3: aiffByteSwap24((uint24_t*)buffer); break;
	case 4: aiffByteSwap32((uint32_t*)buffer); break;
	default: break;
	}
      numBytes -= bytesPerSample;
      buffer += bytesPerSample;
    } 
}

/*-------_---------------_---_----------------_-------------_----------------------------
 _____ _| |_ _ _ __ _ __| |_(_)_ _  __ _   __| |_ _  _ _ _ | |__ ___
/ -_) \ /  _| '_/ _` / _|  _| | ' \/ _` | / _| ' \ || | ' \| / /(_-<
\___/_\_\\__|_| \__,_\__|\__|_|_||_\__, | \__|_||_\_,_|_||_|_\_\/__/
                                   |___/                           
---------------------------------------------------------------------------------------*/

//extractFormChunkFromFile---------------------------------------------------------------
int aiffExtractFormChunkFromFile(mkAiffFormChunk_t* formChunk, FILE* file)
{
  if(!fread(&(formChunk->chunkID ),         4, 1, file)) return 0;
  if(!fread(&(formChunk->chunkSize ),       4, 1, file)) return 0;
  if(!fread(&(formChunk->formTypeID),       4, 1, file)) return 0;
  if(aiffThisSystemIsLittleEndian()) aiffSwapFormChunkByteOrder(formChunk);
  #ifdef AIFF_PRINT_DEBUG_MESSAGES
  printf("Form Chunk detected\n");
  #endif
  return 1;
}

//extractCommonChunkFromFile-------------------------------------------------------------
int aiffExtractCommonChunkFromFile(MKAiff* aiff, FILE* file)
{
  if(!fread(&(aiff->commonChunk.chunkSize),       4, 1, file)) return 0;
  if(!fread(&(aiff->commonChunk.numChannels),     2, 1, file)) return 0;
  if(!fread(&(aiff->commonChunk.numSampleFrames), 4, 1, file)) return 0;
  if(!fread(&(aiff->commonChunk.bitsPerSample),   2, 1, file)) return 0;
  if(!fread(&(aiff->commonChunk.sampleRate),     10, 1, file)) return 0;
  if(aiffThisSystemIsLittleEndian()) aiffSwapCommonChunkByteOrder(&(aiff->commonChunk));
  aiff->commonChunk.chunkID = AIFF_COMMON_CHUNK_ID;
  #ifdef AIFF_PRINT_DEBUG_MESSAGES
  printf("common chunk detected: numChannels: %i, sampleRate: %i, bitsPerSample: %i, numFrames: %i, duration: %f\n", aiffNumChannels(aiff), (int)aiffSampleRate(aiff), aiffBitsPerSample(aiff), aiff->commonChunk.numSampleFrames, (float)aiff->commonChunk.numSampleFrames / (float)aiffSampleRate(aiff));
  #endif  
  return 1;
}

//extractSoundChunkAndSoundBufferFromFile------------------------------------------------
int aiffExtractSoundChunkAndSoundBufferFromFile(MKAiff* aiff, FILE* file, void** returnedBuffer, int* sizeOfReturnedBuffer)
{
  if(!fread(&(aiff->soundChunk.chunkSize), 4, 1, file)) return 0;
  if(!fread(&(aiff->soundChunk.offset),    4, 1, file)) return 0;
  if(!fread(&(aiff->soundChunk.blockSize), 4, 1, file)) return 0;
  if(aiffThisSystemIsLittleEndian()) aiffSwapSoundChunkByteOrder(&(aiff->soundChunk));
  
  aiff->soundChunk.chunkID = AIFF_SOUND_CHUNK_ID;
  
  *sizeOfReturnedBuffer = aiff->soundChunk.chunkSize - 8;
  *returnedBuffer = malloc(*sizeOfReturnedBuffer);
  if(!fread(*returnedBuffer, *sizeOfReturnedBuffer, 1, file)) return 0;
  #ifdef AIFF_PRINT_DEBUG_MESSAGES
  printf("sound chunk detected\n");
  #endif
  return 1;
}

//extractCommentChunkFromFile------------------------------------------------------------
int aiffExtractCommentChunkFromFile(MKAiff* aiff, FILE* file)
{
  int littleEndian = aiffThisSystemIsLittleEndian();
  mkAiffCommentChunk_t tempCommentChunk;
  //tempCommentChunk.chunkID = AIFF_COMMENT_CHUNK_ID;
  if(!fread(&(tempCommentChunk.chunkSize),   4, 1, file)) return 0;
  if(!fread(&(tempCommentChunk.numComments), 2, 1, file)) return 0;
  if(littleEndian) aiffSwapCommentChunkByteOrder(&(tempCommentChunk));
  
  int i;
  mkAiffComment_t tempComment;
  for(i=0; i<tempCommentChunk.numComments; i++)
    {
      if(!fread(&(tempComment.timeStamp), 4, 1, file)) return 0;
      if(!fread(&(tempComment.markerID),  2, 1, file)) return 0;
      if(!fread(&(tempComment.numChars),  2, 1, file)) return 0;
      if(aiffThisSystemIsLittleEndian()) aiffSwapCommentByteOrder(&(tempComment));
      
      char text[tempComment.numChars + 1];
      if(!fread(text, tempComment.numChars, 1, file)) return 0;
      text[tempComment.numChars] = '\0';
      aiffAddCommentWithText(aiff, text, tempComment.markerID);
      #ifdef AIFF_PRINT_DEBUG_MESSAGES
      printf("comment detected: %s\n", text);
      #endif
      //if numChars is odd there will be an extra byte of padding that can be read into somewhere and ignored
      if(tempComment.numChars & 0x01) if(!fread(text,  1, 1, file)) return 0; 
    }
  
  int discrepancy = tempCommentChunk.chunkSize - aiff->commentChunk->chunkSize; 
  if(discrepancy > 0)
    {
      //why does Logic write garbage into its files?
      char garbage[discrepancy];
      if(!fread(garbage, discrepancy, 1, file)) return 0;
    }
  return 1;
} 

//extractMarkerChunkFromFile-------------------------------------------------------------
int aiffExtractMarkerChunkFromFile(MKAiff* aiff, FILE* file)
{
  int littleEndian = aiffThisSystemIsLittleEndian();
  mkAiffMarkerChunk_t tempMarkerChunk;
  //tempMarkerChunk.chunkID = AIFF_MARKER_CHUNK_ID;
  if(!fread(&(tempMarkerChunk.chunkSize),  4, 1, file)) return 0;
  if(!fread(&(tempMarkerChunk.numMarkers), 2, 1, file)) return 0;
  if(littleEndian) aiffSwapMarkerChunkByteOrder(&tempMarkerChunk);
  
  int i;
  mkAiffMarker_t tempMarker;
  for(i=0; i<tempMarkerChunk.numMarkers; i++)
    {
      if(!fread(&(tempMarker.markerID),          2, 1, file)) return 0;
      if(!fread(&(tempMarker.positionInFrames),  4, 1, file)) return 0;
      if(aiffThisSystemIsLittleEndian()) aiffSwapMarkerByteOrder(&tempMarker);
      char size;
      if(!fread(&size, 1, 1, file)) return 0;
      char text[size+1];
      if(!fread(text, size, 1, file)) return 0;
      text[(int)size] = '\0';
      aiffAddMarkerWithPositionInFrames(aiff, text, tempMarker.markerID, tempMarker.positionInFrames);
      #ifdef AIFF_PRINT_DEBUG_MESSAGES
      printf("marker detcted: %s\n", text);
      #endif
      //if numChars is odd there will be an extra byte of padding that can be read into somewhere and ignored
      if((size+1) & (0x01)) if(!fread(text,  1, 1, file)) return 0; 
    }
  int discrepancy = tempMarkerChunk.chunkSize - aiff->markerChunk->chunkSize; 
  if(discrepancy > 0)
    {
      char garbage[discrepancy];
      if(!fread(garbage, discrepancy, 1, file)) return 0;
    }
  return 1;
} 


//extractInstrumentChunkFromFile---------------------------------------------------------
int aiffExtractInstrumentChunkFromFile         (MKAiff* aiff, FILE* file)
{
  mkAiffInstrumentChunk_t tempInstChunk;   
  if(!fread( &(tempInstChunk.chunkSize),                 4, 1, file)) return 0;  
  if(!fread( &(tempInstChunk.baseNote),                  1, 1, file)) return 0;                
  if(!fread( &(tempInstChunk.detune),                    1, 1, file)) return 0;                  
  if(!fread( &(tempInstChunk.lowNote),                   1, 1, file)) return 0;                 
  if(!fread( &(tempInstChunk.highNote),                  1, 1, file)) return 0;                
  if(!fread( &(tempInstChunk.lowVelocity),               1, 1, file)) return 0;             
  if(!fread( &(tempInstChunk.highVelocity),              1, 1, file)) return 0;            
  if(!fread( &(tempInstChunk.decibelsGain),              2, 1, file)) return 0;            
  if(!fread( &(tempInstChunk.sustainLoop.playMode),      2, 1, file)) return 0;    
  if(!fread( &(tempInstChunk.sustainLoop.startMarkerID), 2, 1, file)) return 0; 
  if(!fread( &(tempInstChunk.sustainLoop.endMarkerID),   2, 1, file)) return 0;   
  if(!fread( &(tempInstChunk.releaseLoop.playMode),      2, 1, file)) return 0;    
  if(!fread( &(tempInstChunk.releaseLoop.startMarkerID), 2, 1, file)) return 0; 
  if(!fread( &(tempInstChunk.releaseLoop.endMarkerID)  , 2, 1, file)) return 0; 
  if(aiffThisSystemIsLittleEndian()) aiffSwapInstrumentChunkByteOrder(&tempInstChunk);
  #ifdef AIFF_PRINT_DEBUG_MESSAGES
  printf("Instrument chunk detected, pitch: %hhu\n", tempInstChunk.baseNote);
  #endif
  aiffSetupInstrumentInfo(aiff, tempInstChunk.baseNote, tempInstChunk.detune, tempInstChunk.lowNote, tempInstChunk.highNote,
			  tempInstChunk.lowVelocity, tempInstChunk.highVelocity, tempInstChunk.decibelsGain, 
			  tempInstChunk.sustainLoop.playMode, tempInstChunk.sustainLoop.startMarkerID, tempInstChunk.sustainLoop.endMarkerID,
			  tempInstChunk.releaseLoop.playMode, tempInstChunk.releaseLoop.startMarkerID, tempInstChunk.releaseLoop.endMarkerID);
  return 1;
}

//extractMIDIChunkFromFile---------------------------------------------------------------
int aiffExtractMIDIChunkFromFile               (MKAiff* aiff, FILE* file)
{
return 0;
}

//extractRecordingChunkFromFile----------------------------------------------------------
int aiffExtractRecordingChunkFromFile          (MKAiff* aiff, FILE* file)
{
return 0;
}

//extractApplicationChunkFromFile--------------------------------------------------------
int aiffExtractApplicationChunkFromFile        (MKAiff* aiff, FILE* file)
{
return 0;
}

//extractTextChunkFromFile---------------------------------------------------------------
int aiffExtractTextChunkFromFile               (MKAiff* aiff, FILE* file, aiffChunkIdentifier_t chunkID)
{
  int32_t size=0;
  if(!(fread(&size, 4, 1, file))) return 0;
  if(aiffThisSystemIsLittleEndian()) aiffByteSwap32((uint32_t*)&size);
  
  if(size!=0)
  {
    char text[size+1];
    if(!fread(text, 1, size, file)) return 0;
    text[size] = '\0';
    switch(chunkID)
    {
      case EA_IFF85_NAME_CHUNK_ID:       aiffSetName        (aiff, text); break;
      case EA_IFF85_AUTHOR_CHUNK_ID:     aiffSetAuthor      (aiff, text); break;
      case EA_IFF85_COPYRIGHT_CHUNK_ID:  aiffSetCopyright   (aiff, text); break;
      case EA_IFF85_ANNOTATION_CHUNK_ID: aiffAddAnnotation  (aiff, text); break;
      default:                           aiffAddGenericChunk(aiff, (unsigned char*)text, size, chunkID); break;
    }
    #ifdef AIFF_PRINT_DEBUG_MESSAGES
    printf("%c%c%c%c chunk detected, %s\n", ((chunkID&0xFF000000)>>24),((chunkID&0x00FF0000)>>16),((chunkID&0x0000FF00)>>8),(chunkID&0x000000FF), text);
    //printf("%c%c%c%c chunk detected!!", ((chunkID&0xFF000000)>>24),((chunkID&0x00FF0000)>>16),((chunkID&0x0000FF00)>>8),(chunkID&0x000000FF));
    #endif
  }
  return 1;
}

//extractGenericChunkFromFile------------------------------------------------------------
int aiffExtractGenericChunkFromFile               (MKAiff* aiff, FILE* file, aiffChunkIdentifier_t chunkID)
{
  return aiffExtractTextChunkFromFile(aiff, file, chunkID);
}

/*----------_-_---_----------------_-------------_---------------------------------------
__ __ ___ _(_) |_(_)_ _  __ _   __| |_ _  _ _ _ | |__ ___
\ V  V / '_| |  _| | ' \/ _` | / _| ' \ || | ' \| / /(_-<
 \_/\_/|_| |_|\__|_|_||_\__, | \__|_||_\_,_|_||_|_\_\/__/
                        |___/                                                                        
---------------------------------------------------------------------------------------*/

//writeFormChunkToFile-------------------------------------------------------------------
void aiffWriteFormChunkToFile(MKAiff* aiff, FILE* file)
{
  mkAiffFormChunk_t formChunk = {AIFF_FORM_CHUNK_ID, /*chunkSize*/46+(aiff->numSamplesWrittenToBuffer)*aiffBytesPerSample(aiff), AIFF_FORM_TYPE_ID};
  
  if(aiff->commentChunk         != NULL) formChunk.chunkSize += 8+(aiff->commentChunk->chunkSize);
  if(aiff->markerChunk          != NULL) formChunk.chunkSize += 8+(aiff->markerChunk->chunkSize);
  if(aiff->instrumentChunk      != NULL) formChunk.chunkSize += 28;
  if(aiff->midiChunkList        != NULL) formChunk.chunkSize += aiffNumBytesInList((mkAiffSizableListEntry_t*)(aiff->midiChunkList), 8);
  if(aiff->recordingChunk       != NULL) formChunk.chunkSize += 32;
  if(aiff->applicationChunkList != NULL) formChunk.chunkSize += aiffNumBytesInList((mkAiffSizableListEntry_t*)(aiff->applicationChunkList), 12);
  if(aiff->nameChunk            != NULL) formChunk.chunkSize += 8+(aiff->nameChunk->chunkSize);
  if(aiff->copyrightChunk       != NULL) formChunk.chunkSize += 8+(aiff->copyrightChunk->chunkSize);
  if(aiff->authorChunk          != NULL) formChunk.chunkSize += 8+(aiff->authorChunk->chunkSize);
  if(aiff->annotationChunkList  != NULL) formChunk.chunkSize += aiffNumBytesInList((mkAiffSizableListEntry_t*)(aiff->annotationChunkList), 8);
  if(aiff->unknownChunkList     != NULL) formChunk.chunkSize += aiffNumBytesInList((mkAiffSizableListEntry_t*)(aiff->unknownChunkList), 8);
  
  
  if(aiffThisSystemIsLittleEndian()) aiffSwapFormChunkByteOrder(&formChunk);
  fwrite(&(formChunk.chunkID),    4, 1, file);
  fwrite(&(formChunk.chunkSize),  4, 1, file);
  fwrite(&(formChunk.formTypeID), 4, 1, file);
}
//writeCommonChunkToFile-----------------------------------------------------------------
void aiffWriteCommonChunkToFile(MKAiff* aiff, FILE* file)
{
  mkAiffCommonChunk_t tempCommonChunk = aiff->commonChunk;
  tempCommonChunk.numSampleFrames = (aiff->numSamplesWrittenToBuffer) / (aiff->commonChunk.numChannels);
  if(aiffThisSystemIsLittleEndian())aiffSwapCommonChunkByteOrder(&tempCommonChunk);
  
  fwrite(&tempCommonChunk.chunkID,         4, 1, file);
  fwrite(&tempCommonChunk.chunkSize,       4, 1, file);
  fwrite(&tempCommonChunk.numChannels,     2, 1, file);
  fwrite(&tempCommonChunk.numSampleFrames, 4, 1, file);
  fwrite(&tempCommonChunk.bitsPerSample,   2, 1, file);
  fwrite(&tempCommonChunk.sampleRate,     10, 1, file);
}

//writeSoundChunkAndSoundBufferToFile----------------------------------------------------
void aiffWriteSoundChunkAndSoundBufferToFile(MKAiff* aiff, FILE* file)
{
  int littleEndian = aiffThisSystemIsLittleEndian();
  int bytesPerSample = (int)aiffBytesPerSample(aiff);
  mkAiffSoundChunk_t tempSoundChunk = aiff->soundChunk;
  tempSoundChunk.chunkSize = 8+(aiff->numSamplesWrittenToBuffer)*bytesPerSample;
  if(littleEndian) aiffSwapSoundChunkByteOrder(&tempSoundChunk);
  fwrite(&(tempSoundChunk.chunkID),   4, 1, file);
  fwrite(&(tempSoundChunk.chunkSize), 4, 1, file);
  fwrite(&(tempSoundChunk.offset),    4, 1, file);
  fwrite(&(tempSoundChunk.blockSize), 4, 1, file);
  
  int32_t i, *bufferPointer = aiff->soundBuffer;
  if(littleEndian)
    aiffSwapBufferByteOrder(aiff->soundBuffer, 4, aiffDurationInSamples(aiff)*4);
  for(i=0; i<aiff->numSamplesWrittenToBuffer; i++)
  {
    //printf("%i\n", (int)*bufferPointer);
    fwrite(bufferPointer++, bytesPerSample, 1, file);
 }
   if(littleEndian)
    aiffSwapBufferByteOrder(aiff->soundBuffer, 4, aiffDurationInSamples(aiff)*4); //put it back for future use
}

//writeCommentChunkToFile----------------------------------------------------------------
void aiffWriteCommentChunkToFile(MKAiff* aiff, FILE* file)
{
  if(aiff->commentChunk!=NULL)
    {
      int littleEndian = aiffThisSystemIsLittleEndian();
      mkAiffCommentChunk_t tempCommentChunk = *(aiff->commentChunk);
      if(littleEndian) aiffSwapCommentChunkByteOrder(&tempCommentChunk);
      
      fwrite(&(tempCommentChunk.chunkID),     4, 1, file);
      fwrite(&(tempCommentChunk.chunkSize),   4, 1, file);
      fwrite(&(tempCommentChunk.numComments), 2, 1, file);
      
      int i, numChars;
      mkAiffComment_t tempComment = *(aiff->commentChunk->firstComment);
      for(i=0; i<aiff->commentChunk->numComments; i++)
  {
    numChars = tempComment.numChars;  //preserve it before it gets swapped
    if(littleEndian)aiffSwapCommentByteOrder(&tempComment);
    fwrite(&(tempComment.timeStamp),   4, 1, file);
    fwrite(&(tempComment.markerID),    2, 1, file);
    fwrite(&(tempComment.numChars),    2, 1, file);
    fwrite(tempComment.text, numChars, 1, file);
    if(numChars & 0x01)  //if numChars is odd, pad the end with a random byte
      fwrite(" ", 1, 1, file);
    
    if(tempComment.next != NULL) tempComment = *((mkAiffComment_t*)tempComment.next);
  }
    }
}

//writeMarkerChunkToFile-----------------------------------------------------------------
void aiffWriteMarkerChunkToFile(MKAiff* aiff, FILE* file)
{
  if(aiff->markerChunk!=NULL)
    {
      int littleEndian = aiffThisSystemIsLittleEndian();
      mkAiffMarkerChunk_t tempMarkerChunk = *(aiff->markerChunk);
      if(littleEndian) aiffSwapMarkerChunkByteOrder(&tempMarkerChunk);
      
      fwrite(&(tempMarkerChunk.chunkID),     4, 1, file);
      fwrite(&(tempMarkerChunk.chunkSize),   4, 1, file);
      fwrite(&(tempMarkerChunk.numMarkers),  2, 1, file);
      
      int i;
      mkAiffMarker_t tempMarker = *(aiff->markerChunk->firstMarker);
      for(i=0; i<aiff->markerChunk->numMarkers; i++)
        {
	  if(littleEndian)aiffSwapMarkerByteOrder(&tempMarker);
	  fwrite(&(tempMarker.markerID),             2, 1, file);
	  fwrite(&(tempMarker.positionInFrames),     4, 1, file);
	  fwrite(tempMarker.name, tempMarker.name[0]+1, 1, file);
	  if((tempMarker.name[0]+1) & 0x01)  //if total size is odd, pad the end with a random byte
	    fwrite(" ", 1, 1, file);
	  
	  if(tempMarker.next != NULL) tempMarker = *((mkAiffMarker_t*)tempMarker.next);
        }
    }
}

//writeInstrumentChunkToFile-------------------------------------------------------------
void aiffWriteInstrumentChunkToFile(MKAiff* aiff, FILE* file)
{
  mkAiffInstrumentChunk_t tempInstChunk = *(aiff->instrumentChunk);
  if(aiffThisSystemIsLittleEndian()) aiffSwapInstrumentChunkByteOrder(&tempInstChunk);
  
  fwrite( &(tempInstChunk.chunkID),                   4, 1, file);   
  fwrite( &(tempInstChunk.chunkSize),                 4, 1, file);  
  fwrite( &(tempInstChunk.baseNote),                  1, 1, file);                
  fwrite( &(tempInstChunk.detune),                    1, 1, file);                  
  fwrite( &(tempInstChunk.lowNote),                   1, 1, file);                 
  fwrite( &(tempInstChunk.highNote),                  1, 1, file);                
  fwrite( &(tempInstChunk.lowVelocity),               1, 1, file);             
  fwrite( &(tempInstChunk.highVelocity),              1, 1, file);            
  fwrite( &(tempInstChunk.decibelsGain),              2, 1, file);            
  fwrite( &(tempInstChunk.sustainLoop.playMode),      2, 1, file);    
  fwrite( &(tempInstChunk.sustainLoop.startMarkerID), 2, 1, file); 
  fwrite( &(tempInstChunk.sustainLoop.endMarkerID),   2, 1, file);   
  fwrite( &(tempInstChunk.releaseLoop.playMode),      2, 1, file);    
  fwrite( &(tempInstChunk.releaseLoop.startMarkerID), 2, 1, file); 
  fwrite( &(tempInstChunk.releaseLoop.startMarkerID), 2, 1, file); 
}

//writeMIDIChunksToFile------------------------------------------------------------------
void aiffWriteMIDIChunksToFile(MKAiff* aiff, FILE* file)
{
  
}

//writeRecordingChunkToFile--------------------------------------------------------------
void aiffWriteRecordingChunkToFile(MKAiff* aiff, FILE* file)
{
    
}

//writeApplicationChunksChunkToFile------------------------------------------------------
void aiffWriteApplicationChunksChunkToFile(MKAiff* aiff, FILE* file)    
{
    
}

//writeTextChunkChunkToFile--------------------------------------------------------------
void aiffWriteGenericChunkToFile(MKAiff* aiff, FILE* file, mkAiffGenericChunk_t* genericChunk)
{
  int32_t size = genericChunk->chunkSize; //preserve it before it is swapped;
  if(aiffThisSystemIsLittleEndian()) aiffSwapTextChunkByteOrder(genericChunk);
  fwrite( &(genericChunk->chunkID),   4, 1, file);
  fwrite( &(genericChunk->chunkSize), 4, 1, file);
  fwrite(genericChunk->data,       size, 1, file);
}

//writeAnnotationChunksToFile------------------------------------------------------------
void aiffWriteAnnotationChunksToFile(MKAiff* aiff, FILE* file) 
{
  mkAiffGenericChunk_t* textChunk = (mkAiffGenericChunk_t*)aiff->annotationChunkList;
  while(textChunk != NULL)
  {
    aiffWriteGenericChunkToFile(aiff, file, textChunk);
    textChunk = (mkAiffGenericChunk_t*)textChunk->next;
  }
}

//writeGenericChunksToFile---------------------------------------------------------------
void aiffWriteGenericChunksToFile(MKAiff* aiff, FILE* file)
{
  mkAiffGenericChunk_t* genericChunk = (mkAiffGenericChunk_t*)aiff->unknownChunkList;
  while(genericChunk != NULL)
  {
    aiffWriteGenericChunkToFile(aiff, file,  genericChunk);
    genericChunk = (mkAiffGenericChunk_t*)genericChunk->next;
  }  
}



/*--_--------_----------------_----------------_-------------_---------------------------
 __| |___ __| |_ _ _ ___ _  _(_)_ _  __ _   __| |_ _  _ _ _ | |__ ___
/ _` / -_|_-<  _| '_/ _ \ || | | ' \/ _` | / _| ' \ || | ' \| / /(_-<
\__,_\___/__/\__|_| \___/\_, |_|_||_\__, | \__|_||_\_,_|_||_|_\_\/__/
                         |__/       |___/                            
---------------------------------------------------------------------------------------*/


//removeAllComments----------------------------------------------------------------------
void aiffRemoveAllComments(MKAiff* aiff)
{
  if(aiff->commentChunk == NULL) return;
  
  int i;
  mkAiffComment_t* comment = aiff->commentChunk->firstComment;
  for(i=0; i<aiff->commentChunk->numComments; i++)
    {
      if(comment->previous != NULL) free((mkAiffComment_t*)(comment->previous));
      free(comment->text);
      if(comment->next != NULL) comment = (mkAiffComment_t*)(comment->next);
    }
  free(comment);
  free(aiff->commentChunk);
  aiff->commentChunk = NULL;
}

//removeAllMarkers-----------------------------------------------------------------------
void aiffRemoveAllMarkers(MKAiff* aiff)
{
  if(aiff->markerChunk == NULL) return;
  
  int i;
  mkAiffMarker_t* marker = aiff->markerChunk->firstMarker;
  for(i=0; i<aiff->markerChunk->numMarkers; i++)
    {
      if(marker->previous != NULL) free((mkAiffMarker_t*)(marker->previous));
      free(marker->name);
      if(marker->next != NULL) marker = (mkAiffMarker_t*)(marker->next);
    }
  free(marker);
  free(aiff->markerChunk);
  aiff->markerChunk = NULL;
}

//removeInstrumentInfo-------------------------------------------------------------------
void aiffRemoveInstrumentInfo(MKAiff* aiff)
{
  if(aiff->instrumentChunk != NULL)
    {
      free(aiff->instrumentChunk);
      aiff->instrumentChunk = NULL;
    }
}

//destroyGenericChunk----------------------------------------------------------------------
void aiffDestroyGenericChunk(mkEAiff85TextChunk_t* genericChunk)
{
  if (genericChunk != NULL)
  {
    if(genericChunk->data != NULL)
      free(genericChunk->data);
    
    free(genericChunk);
  }
}

//removeName-----------------------------------------------------------------------------
void aiffRemoveName(MKAiff* aiff)
{
  aiffDestroyGenericChunk((mkAiffGenericChunk_t*)(aiff->nameChunk));
  aiff->nameChunk = NULL;
}

//removeAuthor---------------------------------------------------------------------------
void aiffRemoveAuthor(MKAiff* aiff)
{
  aiffDestroyGenericChunk((mkAiffGenericChunk_t*)(aiff->authorChunk));
  aiff->authorChunk = NULL;
}

//removeCopyright----------------------------------------------------------------------
void aiffRemoveCopyright(MKAiff* aiff)
{
  aiffDestroyGenericChunk((mkAiffGenericChunk_t*)(aiff->copyrightChunk));
  aiff->copyrightChunk = NULL;
}

//removeAllAnnotations-------------------------------------------------------------------
void aiffRemoveAllAnnotations(MKAiff* aiff)
{
  mkAiffGenericChunk_t* textChunk = (mkAiffGenericChunk_t*)(aiff->annotationChunkList);
  mkAiffGenericChunk_t* tempTextChunk;
  while(textChunk != NULL)
  {
    tempTextChunk = (mkAiffGenericChunk_t*)textChunk->next;
    aiffDestroyGenericChunk(textChunk);
    textChunk = tempTextChunk;
  }
  aiff->annotationChunkList = NULL;
}

//removeAllGenericChunks-----------------------------------------------------------------
void aiffRemoveAllGenericChunks(MKAiff* aiff)
{
  mkAiffGenericChunk_t* genericChunk = (aiff->unknownChunkList);
  mkAiffGenericChunk_t* tempGenericChunk;
  while(genericChunk != NULL)
  {
    tempGenericChunk = (mkAiffGenericChunk_t*)genericChunk->next;
    aiffDestroyGenericChunk(genericChunk);
    genericChunk = tempGenericChunk;
  }
  aiff->unknownChunkList = NULL;
}

/*---------------_---_----------------_-------------_------------------------------------
 __ _ _ ___ __ _| |_(_)_ _  __ _   __| |_ _  _ _ _ | |__ ___
/ _| '_/ -_) _` |  _| | ' \/ _` | / _| ' \ || | ' \| / /(_-<
\__|_| \___\__,_|\__|_|_||_\__, | \__|_||_\_,_|_||_|_\_\/__/
                           |___/                            
---------------------------------------------------------------------------------------*/


void aiffAppendEntryToList(mkAiffListEntry_t* newEntry, mkAiffListEntry_t* firstEntry)
{
  mkAiffListEntry_t* thisEntry = firstEntry;
  while (thisEntry->next != NULL) 
    {
      thisEntry = (mkAiffListEntry_t*) (thisEntry->next);
    }
  thisEntry->next = newEntry;
  newEntry->previous = thisEntry;
  newEntry->next = NULL;
}

int aiffNumBytesInList(mkAiffSizableListEntry_t* listEntry, int numBytesPerEntryNotCountedInChunkSize)
{
  int count = 0;
  while(listEntry != NULL)
  {
    count += numBytesPerEntryNotCountedInChunkSize;
    count += listEntry->chunkSize;
    listEntry = (mkAiffSizableListEntry_t*)listEntry->next;
  }
  return count;
}

//createTextChunk------------------------------------------------------------------------
mkEAiff85TextChunk_t* aiffCreateTextChunk(aiffChunkIdentifier_t chunkID, char* text)
{
  mkEAiff85TextChunk_t* textChunk = (mkEAiff85TextChunk_t*)malloc(sizeof(*textChunk));
  textChunk->chunkID = chunkID;
  textChunk->chunkSize = strlen(text);
  textChunk->data = (char*)malloc(textChunk->chunkSize);
  
  int i;
  for(i=0; i<textChunk->chunkSize; i++)
    (textChunk->data)[i] = text[i];
  
  return textChunk; 
}













/*---------_----_-_----------------------------------------------------------------------
 _ __ _  _| |__| (_)__                                   
| '_ \ || | '_ \ | / _|                                  
| .__/\_,_|_.__/_|_\__|                                  
|_|                                                                                                  
---------------------------------------------------------------------------------------*/                                            
                                             


//aiffWithContentsOfFile-----------------------------------------------------------------
MKAiff* aiffWithContentsOfFile(char* filename)
{
  FILE* file = fopen(filename, "rb");
  if(file == NULL) {/*fprintf(stderr, "unable to open %s for reading\n", filename);*/ return NULL;}
  
  mkAiffFormChunk_t formChunk;  
  int success = aiffExtractFormChunkFromFile(&formChunk, file);
  if((!success) || (formChunk.chunkID != AIFF_FORM_CHUNK_ID) || (formChunk.formTypeID != AIFF_FORM_TYPE_ID)) {/*fprintf(stderr, "that is not an aiff file\n");*/ return NULL;}
  
  MKAiff* aiff = aiffAllocate();
  aiffChunkIdentifier_t chunkID;
  void* returnedBuffer = NULL;
  int sizeOfReturnedBuffer = 0;
  int littleEndian = aiffThisSystemIsLittleEndian();
  int size;  
  while(aiffYes)
    {
      size = fread(&chunkID, sizeof(chunkID), 1, file);
      if(size <= 0) break;
      if(littleEndian) aiffByteSwap32(&chunkID);
      
      switch(chunkID)
	{
	case AIFF_COMMON_CHUNK_ID: success = aiffExtractCommonChunkFromFile(aiff, file);
	  if(!success){/*fprintf(stderr, "unable to parse Common Chunk\n");*/ return aiffDestroy(aiff);} 
	  break;
	case AIFF_SOUND_CHUNK_ID: success = aiffExtractSoundChunkAndSoundBufferFromFile(aiff, file, &returnedBuffer, &sizeOfReturnedBuffer); 
	  if(!success){/*fprintf(stderr, "unable to parse Sound Chunk\n");*/ return aiffDestroy(aiff);} 
	  break;
	case AIFF_MARKER_CHUNK_ID: success = aiffExtractMarkerChunkFromFile(aiff, file); 
	  if(!success){/*fprintf(stderr, "unable to parse Marker Chunk\n");*/ return aiffDestroy(aiff);} 
	  break;
	case AIFF_INSTRUMENT_CHUNK_ID: success = aiffExtractInstrumentChunkFromFile(aiff, file); 
	  if(!success){/*fprintf(stderr, "unable to parse Instrument Chunk\n");*/ return aiffDestroy(aiff);} 
	  break;
	  //case AIFF_MIDI_CHUNK_ID: success = aiffExtractMIDIChunkFromFile(aiff, file); 
	  //if(!success){/*fprintf(stderr, "unable to parse MIDI Chunk\n");*/ return aiffDestroy(aiff);} 
	  //break;
	  //case AIFF_RECORDING_CHUNK_ID: success = aiffExtractRecordingChunkFromFile(aiff, file); 
	  //if(!success){/*fprintf(stderr, "unable to parse Recording Chunk\n");*/ return aiffDestroy(aiff);} 
	  //break;
	  //case AIFF_APPLICATION_CHUNK_ID: success = aiffExtractApplicationChunkFromFile(aiff, file); 
	  //if(!success){/*fprintf(stderr, "unable to parse Application Chunk\n");*/ return aiffDestroy(aiff);} 
	  //break;  
	case AIFF_COMMENT_CHUNK_ID: success = aiffExtractCommentChunkFromFile(aiff, file); 
	  if(!success){/*fprintf(stderr, "unable to parse Comment Chunk\n");*/ return aiffDestroy(aiff);} 
	  break;
	case EA_IFF85_NAME_CHUNK_ID: 
	case EA_IFF85_AUTHOR_CHUNK_ID: 
	case EA_IFF85_COPYRIGHT_CHUNK_ID:
	case EA_IFF85_ANNOTATION_CHUNK_ID: success = aiffExtractTextChunkFromFile(aiff, file, chunkID); 
	  if(!success){/*fprintf(stderr, "unable to parse Text Chunk\n");*/ return aiffDestroy(aiff);} 
	  break;
	default:
	  success = aiffExtractGenericChunkFromFile(aiff, file, chunkID);
	  if(!success){/*fprintf(stderr, "unable to parse generic Chunk\n");*/ return aiffDestroy(aiff);}
	  break;
	}
    }
  int sizeOfSample = (int)aiffBytesPerSample(aiff);
  if((sizeOfSample < 1) || (sizeOfSample > 4)){/*fprintf(stderr, "an unknown problem transpired while reading %s\n", filename);*/ return aiffDestroy(aiff);} 
  if(returnedBuffer != NULL) 
    {
      success = aiffAllocateSoundBuffer(aiff, sizeOfReturnedBuffer / sizeOfSample);
      if(!success){/*fprintf(stderr, "unable to allocate buffer\n");*/ return aiffDestroy(aiff);} 
      if(littleEndian) aiffSwapBufferByteOrder(returnedBuffer, sizeOfSample, sizeOfReturnedBuffer);
      aiffAppendIntegerSamples(aiff, returnedBuffer, sizeOfReturnedBuffer/sizeOfSample, sizeOfSample, aiffBitsPerSample(aiff), aiffYes, aiffYes);
      aiffRewindPlayheadToBeginning(aiff);
      free(returnedBuffer);
    }
  return aiff;
}  

//allocate-------------------------------------------------------------------------------
MKAiff* aiffAllocate()
{
  MKAiff* aiff = (MKAiff*)malloc(sizeof(*aiff));
  
  aiff->markerChunk               = NULL;
  aiff->instrumentChunk           = NULL;
  aiff->midiChunkList             = NULL;
  aiff->recordingChunk            = NULL;
  aiff->applicationChunkList      = NULL;
  aiff->commentChunk              = NULL;       
  aiff->nameChunk                 = NULL;
  aiff->copyrightChunk            = NULL;
  aiff->authorChunk               = NULL;
  aiff->annotationChunkList       = NULL; 
  aiff->unknownChunkList          = NULL;
  aiff->soundBuffer               = NULL;             
  aiff->bufferCapacityInSamples   = 0   ;
  aiff->numSamplesWrittenToBuffer = 0   ;
  aiff->playhead                  = NULL;
  
  return aiff;
}

//aiffWithDurationInSeconds--------------------------------------------------------------
MKAiff* aiffWithDurationInSeconds(int16_t numChannels, unsigned long sampleRate, int16_t bitsPerSample, int numSeconds)
{
  int numSamples = sampleRate * numSeconds * numChannels;
  return aiffWithDurationInSamples(numChannels, sampleRate, bitsPerSample, numSamples);
}

//aiffWithDurationInFrames---------------------------------------------------------------
MKAiff* aiffWithDurationInFrames (int16_t numChannels, unsigned long sampleRate, int16_t bitsPerSample, int numFrames)
{
  int numSamples = numFrames * numChannels;
  return aiffWithDurationInSamples(numChannels, sampleRate, bitsPerSample, numSamples);
}

//aiffWithDurationInSamples--------------------------------------------------------------
MKAiff* aiffWithDurationInSamples(int16_t numChannels, unsigned long sampleRate, int16_t bitsPerSample, int numSamples)
{
  MKAiff* aiff = aiffAllocate();
  if(aiff != NULL)
    {
      mkAiffCommonChunk_t tempCommonChunk = {AIFF_COMMON_CHUNK_ID, /*chunkSize*/18, numChannels, /*numSampleFrames*/0, bitsPerSample, /*sampleRate*/};
      aiff->commonChunk = tempCommonChunk;
      aiffSetSampleRate(aiff, sampleRate); 
      
      mkAiffSoundChunk_t tempSoundChunk = {AIFF_SOUND_CHUNK_ID, /*chunkSize*/8, /*offset*/0, /*blockSize*/0};
      aiff->soundChunk = tempSoundChunk;

      int success = aiffAllocateSoundBuffer(aiff, numSamples);
      if(!success) {aiffDestroy(aiff); return(NULL);}
    }
  return aiff;
}

//aiffNewMono----------------------------------------------------------------------------
MKAiff* aiffNewMono(MKAiff* aiff)
{
  int numFrames   = aiffDurationInFrames(aiff);
  int numChannels = aiffNumChannels(aiff);
  MKAiff* monoAiff = aiffWithDurationInFrames(1, aiffSampleRate(aiff), aiffBitsPerSample(aiff), numFrames);
  if(monoAiff != NULL)
    {
      aiffRewindPlayheadToBeginning(aiff);

      int i;
      int32_t frame[numChannels];
      int32_t monoFrame;
      while(numFrames--)
        {
           monoFrame = 0;
           aiffReadIntegerSamplesAtPlayhead(aiff, frame, numChannels);
           for(i=0; i<numChannels; i++)
             monoFrame += frame[i] / numChannels;
           aiffAppendIntegerSamples(monoAiff, &monoFrame, 1, 4, 32, aiffNo, aiffYes);
        }
      aiffRewindPlayheadToBeginning(monoAiff);
    }
  return monoAiff;
}

//aiffMakeMono---------------------------------------------------------------------------
void             aiffMakeMono(MKAiff* aiff)
{
  int numChannels = aiffNumChannels(aiff);
  if(numChannels > 1)
    {
      unsigned i, duration = aiffDurationInFrames(aiff);
      int32_t *in, *out;
      in = out = aiff->soundBuffer;
      
      while(duration-- > 0)
        {
          *out = *in / numChannels;
          for(i=1; i<numChannels; i++)
            out[0] += in[i] / numChannels;
          out++;
          in += numChannels;
        }
      aiff->numSamplesWrittenToBuffer /= numChannels;
      aiff->commonChunk.numChannels = 1;
    }
    aiffRewindPlayheadToBeginning(aiff);
}

//allocateSoundBuffer--------------------------------------------------------------------
int aiffAllocateSoundBuffer(MKAiff* aiff, int numSamples)
{
  //always keep at least one unaccounted byte at end!
  if((aiff->soundBuffer) == NULL)
    {
      aiff->soundBuffer = (int32_t*)calloc(numSamples+1, 4);
      if(aiff->soundBuffer == NULL) return 0;
      aiffRewindPlayheadToBeginning(aiff);
      aiff->numSamplesWrittenToBuffer = 0;
      aiff->bufferCapacityInSamples = numSamples; 
    }
  else
    {
      #ifdef AIFF_PRINT_DEBUG_MESSAGES
      printf("reallocating sound buffer (because it is going to overflow)\n");
      #endif //AIFF_PRINT_DEBUG_MESSAGES
      int currentPlayheadPosition = aiffPlayheadPositionInSamples(aiff);
      aiff->soundBuffer = (int32_t*)realloc(aiff->soundBuffer, (numSamples+1)*4);
      if(aiff->soundBuffer == NULL) return 0;
      aiff->bufferCapacityInSamples = numSamples;
      aiffSetPlayheadToSamples(aiff, currentPlayheadPosition);
    }
  return 1;
}

//numBytesInFloatType--------------------------------------------------------------------
int aiffNumBytesInFloatType(mkAiffFloatingPointSampleType_t floatType)
{
  int bytesPerSample;
  switch (floatType) 
    {
      case aiffFloatSampleType : bytesPerSample = sizeof(float ); break;
      case aiffDoubleSampleType: bytesPerSample = sizeof(double); break;
      default:                   bytesPerSample = 4;              break;
  }
  return bytesPerSample;
}

//appendIntegerSamples-------------------------------------------------------------------
void aiffAppendIntegerSamples(      MKAiff*       aiff, 
                                    void*         buffer, 
                                    int           numSamples, 
                                    int           bytesPerSample, 
                                    int           bitsPerSample, 
                                    aiffYesOrNo_t leftAligned, 
                                    aiffYesOrNo_t isSigned)
{
  aiffFastForwardPlayheadToEnd(aiff);
  aiffAddSamplesAtPlayhead(aiff, buffer, numSamples, /*isFloat*/aiffNo, aiffNotFloatingPointSampleType, 
                            bytesPerSample, bitsPerSample, leftAligned, isSigned, /*overwrite*/aiffYes);
}

//appendFloatingPointSamples-------------------------------------------------------------
void aiffAppendFloatingPointSamples(MKAiff* aiff, 
                                    void* buffer, 
                                    int numSamples, 
                                    mkAiffFloatingPointSampleType_t floatType)
{

  aiffFastForwardPlayheadToEnd(aiff);
  aiffAddSamplesAtPlayhead(aiff, buffer, numSamples, /*isFloat*/aiffYes, floatType, 
                          /*bytesPerSample*/aiffNumBytesInFloatType(floatType), 
                          /*bitsPerSample*/32, /*leftAligned*/aiffNo, /*isSigned*/aiffYes, 
                          /*overwrite*/aiffYes);
}

//addIntegerSamplesAtPlayhead------------------------------------------------------------
int aiffAddIntegerSamplesAtPlayhead(MKAiff* aiff, 
                                    void* buffer, 
                                    int numSamples, 
                                    int bytesPerSample, 
                                    int bitsPerSample, 
                                    aiffYesOrNo_t leftAligned, 
                                    aiffYesOrNo_t isSigned, 
                                    aiffYesOrNo_t overwrite)
{
    return aiffAddSamplesAtPlayhead(aiff, buffer, numSamples, /*isFloat*/aiffNo, aiffNotFloatingPointSampleType, 
                                    bytesPerSample, bitsPerSample, leftAligned, isSigned, overwrite);
}

//addFloatingPointSamplesAtPlayhead------------------------------------------------------                                    
int aiffAddFloatingPointSamplesAtPlayhead(MKAiff*                     aiff, 
                                          void*                       buffer, 
                                          int                         numSamples, 
                                          mkAiffFloatingPointSampleType_t floatType,
                                          aiffYesOrNo_t               overwrite)
{
  return aiffAddSamplesAtPlayhead(aiff, buffer, numSamples, /*isFloat*/aiffYes, floatType, 
                                 /*bytesPerSample*/aiffNumBytesInFloatType(floatType), 
                                 /*bitsPerSample*/32, /*leftAligned*/aiffNo, /*isSigned*/aiffYes, 
                                 overwrite);
}

                              



//addSamplesAtPlayhead-------------------------------------------------------------------
int aiffAddSamplesAtPlayhead(MKAiff*                        aiff, 
                            void*                           buffer, 
                            int                             numSamples, 
                            aiffYesOrNo_t                   isFloat,
                            mkAiffFloatingPointSampleType_t floatType,
                            int                             bytesPerSample, 
                            int                             bitsPerSample, 
                            aiffYesOrNo_t                   leftAligned, 
                            aiffYesOrNo_t                   isSigned, 
                            aiffYesOrNo_t                   overwrite)                            
{ 
  int bigEndian = !aiffThisSystemIsLittleEndian();
  int ammountToSubtract = (isSigned) ? 0 : ( (leftAligned) ?  0x01 << (bytesPerSample*8-1) : 0x01 << (bitsPerSample-1));
  int shiftAmmount = (leftAligned) ? 32-bytesPerSample*8 : 32-bitsPerSample;
  if((bytesPerSample == 3) && (bigEndian)) {shiftAmmount -= 8; ammountToSubtract <<= 8;}
  int numClippedSamples = 0;
  int32_t nextSample; 
   
  while(numSamples)
    {
      if((aiff->numSamplesWrittenToBuffer) >= (aiff->bufferCapacityInSamples))
        aiffAllocateSoundBuffer(aiff, (aiff->bufferCapacityInSamples)*2); 
      if(isFloat)
        {
          switch(floatType)
          {
            case aiffFloatSampleType:  nextSample = (int32_t)((double)(*(float* )buffer) * 0x7FFFFFFF); break;
            case aiffDoubleSampleType: nextSample = (int32_t)        ((*(double*)buffer) * 0x7FFFFFFF); break;
            default: break;
          }
        }
      //oh sweet jesus let this be right...
      else
        {
          switch(bytesPerSample)
          {
            case 1: nextSample = (isSigned) ? ((int32_t)*((int8_t* )buffer))     : (((int32_t)*((uint8_t* )buffer))-ammountToSubtract);  break;
            case 2: nextSample = (isSigned) ? ((int32_t)*((int16_t*)buffer))     : (((int32_t)*((uint16_t*)buffer))-ammountToSubtract);  break;
            case 4: nextSample = (isSigned) ? (         *((int32_t*)buffer))     : (((int32_t)*((uint32_t*)buffer))-ammountToSubtract);  break;
            case 3: if(bigEndian)
              {   nextSample = (isSigned) ? ((*(int32_t*)buffer) & 0xFFFFFF00) : (((int32_t)*(((uint32_t*)buffer)) & 0xFFFFFF00)-ammountToSubtract);  }
            else{ nextSample = (isSigned) ? ((*(int32_t*)buffer) & 0x00FFFFFF) : (((int32_t)*(((uint32_t*)buffer)) & 0x00FFFFFF)-ammountToSubtract);  }
            break;
            default: break;
          }
          nextSample <<= shiftAmmount;
        }
      if(overwrite) *(aiff->playhead) = nextSample;
      else
        {
          if(((long)*(aiff->playhead) + (long)nextSample) <= -0x7FFFFFFF)
            {  *(aiff->playhead) = -0x7FFFFFFF; numClippedSamples++;  }
          else if(((long)*(aiff->playhead) + (long)nextSample) >= 0x7FFFFFFF) 
            {  *(aiff->playhead) = 0x7FFFFFFF;  numClippedSamples++;  }
          else *(aiff->playhead) += nextSample;
        }
        
      buffer += bytesPerSample;
      aiffAdvancePlayheadBySamples(aiff, 1);
      if(aiffPlayheadPositionInSamples(aiff) > aiffDurationInSamples(aiff))
        {aiff->numSamplesWrittenToBuffer = aiffPlayheadPositionInSamples(aiff);}
        
      numSamples--;
    }
  return numClippedSamples;
}

//readIntegerSamplesAtPlayhead-----------------------------------------------------------
int aiffReadIntegerSamplesAtPlayhead(MKAiff* aiff, int32_t buffer[], int numSamples)
{
  if(aiffPlayheadPositionInSamples(aiff) + numSamples > aiff->numSamplesWrittenToBuffer)
    numSamples = aiff->numSamplesWrittenToBuffer - aiffPlayheadPositionInSamples(aiff);
  
  int i, numSamplesSuccessfullyRead=0;
  for(i=0; i<numSamples; i++)
    {
      buffer[i] = *(aiff->playhead);
      aiffAdvancePlayheadBySamples(aiff, 1);
      numSamplesSuccessfullyRead++;      
    }
  return numSamplesSuccessfullyRead;
}

//readFloatingPointSamplesAtPlayhead-----------------------------------------------------
int aiffReadFloatingPointSamplesAtPlayhead(MKAiff* aiff, float buffer[], int numSamples)
{
  if(aiffPlayheadPositionInSamples(aiff) + numSamples > aiff->numSamplesWrittenToBuffer)
    numSamples = aiff->numSamplesWrittenToBuffer - aiffPlayheadPositionInSamples(aiff);

  int i, numSamplesSuccessfullyRead=0;
  for(i=0; i<numSamples; i++)
    {
      buffer[i] = *(aiff->playhead) / (long double)0x7FFFFFFF;
      aiffAdvancePlayheadBySamples(aiff, 1);
      numSamplesSuccessfullyRead++;      
    }
  return numSamplesSuccessfullyRead;
}

//saveWithFilename-----------------------------------------------------------------------
void aiffSaveWithFilename(MKAiff* aiff, char* filename)
{
  FILE* file = fopen(filename, "wb+");
  if(file == NULL) {/*fprintf(stderr, "unable to open %s for writing\n", filename);*/ return;}
  
  aiffWriteFormChunkToFile                                                          (aiff, file);
  aiffWriteCommonChunkToFile                                                        (aiff, file);
  if(aiff->numSamplesWrittenToBuffer  !=0) aiffWriteSoundChunkAndSoundBufferToFile  (aiff, file);
  if(aiff->commentChunk               != NULL) aiffWriteCommentChunkToFile          (aiff, file);
  if(aiff->markerChunk                != NULL) aiffWriteMarkerChunkToFile           (aiff, file);
  if(aiff->instrumentChunk            != NULL) aiffWriteInstrumentChunkToFile       (aiff, file);
  if(aiff->midiChunkList              != NULL) aiffWriteMIDIChunksToFile            (aiff, file);
  if(aiff->recordingChunk             != NULL) aiffWriteRecordingChunkToFile        (aiff, file);
  if(aiff->applicationChunkList       != NULL) aiffWriteApplicationChunksChunkToFile(aiff, file);
  if(aiff->nameChunk                  != NULL) aiffWriteGenericChunkToFile          (aiff, file, (mkAiffGenericChunk_t*)aiff->nameChunk);
  if(aiff->authorChunk                != NULL) aiffWriteGenericChunkToFile          (aiff, file, (mkAiffGenericChunk_t*)aiff->authorChunk);
  if(aiff->copyrightChunk             != NULL) aiffWriteGenericChunkToFile          (aiff, file, (mkAiffGenericChunk_t*)aiff->copyrightChunk);
  if(aiff->annotationChunkList        != NULL) aiffWriteAnnotationChunksToFile      (aiff, file);
  if(aiff->unknownChunkList           != NULL) aiffWriteGenericChunksToFile         (aiff, file);
  
  fclose(file);
}

//setSampleRate--------------------------------------------------------------------------
void aiffSetSampleRate(MKAiff* aiff, unsigned long r)
{
  int i = 0;
  
  uint32_t rate = r;
  
  if(r <= 0xFFFF)
    {
      for (i=0; (rate & 0xFFFFFFFF) != 0; rate <<= 1, i++)
        if ((rate & 0x8000) != 0)  
          break;
    }
  else
    {
      for (i=0; (rate & 0xFFFFFFFF) != 0; rate >>= 1, i--)
        if ((rate & 0x8000) != 0)  
          break;
     } 
  
  aiff->commonChunk.sampleRate[1] = 14-i;
  aiff->commonChunk.sampleRate[0] = 0x40;
  
  aiff->commonChunk.sampleRate[3] = rate        & 0xFF;
  aiff->commonChunk.sampleRate[2] = (rate >> 8) & 0xFF;
  
  for(i=4; i<sizeof(float80_t); i++) aiff->commonChunk.sampleRate[i] = 0;
}

//aiffResample---------------------------------------------------------------------------
aiffYesOrNo_t aiffResample (MKAiff* aiff, unsigned long rate, aiffInterpolation_t interp /*currently ignored*/)
{  
  unsigned long currentRate = aiffSampleRate(aiff);
  int numChannels = aiffNumChannels(aiff);
  int32_t *out, *in, *buffer = NULL;
  double increment = (double)currentRate / (double)rate;
  unsigned newNumFrames = aiffDurationInFrames(aiff) / increment;
  unsigned i, j;
  double index = 0;
  double mantissa;
  unsigned int base;
  int32_t s1, s2;
  
  if(currentRate != rate)
    {
      in = out = aiff->soundBuffer;
      
      if(currentRate < rate)
        {
          int numSamples = newNumFrames * numChannels;
          buffer = malloc(numSamples * sizeof(*buffer));
          if(buffer == NULL)
            return aiffNo;
          //else
            out = buffer;
            aiff->bufferCapacityInSamples = numSamples;
        }
        
      for(i=0; i<newNumFrames; i++)
        {
          base = (int)index;
          mantissa = index - base;
          base *= numChannels;
          for(j=0; j<numChannels; j++)
            {
              s1 = in[base + j]; 
              s2 = in[base + numChannels + j];
              *out++ = s1 + (mantissa * s2) - (mantissa * s1) + 0.5;
              //*a++ = s1 + mantissa * (s2 - s1) + 0.5; //refactoring could result in integer overflow
            }
          index += increment;
        }
        
      if(buffer != NULL)
        {
          out = aiff->soundBuffer;  //just reuse a variable
          aiff->soundBuffer = buffer;
          if(out != NULL)
            free(out);
        }

      aiff->numSamplesWrittenToBuffer = newNumFrames * numChannels;
      aiffSetSampleRate(aiff, rate);
    }
    
  aiffRewindPlayheadToBeginning(aiff);
  return aiffYes;
}

//sampleRate-----------------------------------------------------------------------------
unsigned long aiffSampleRate(MKAiff* aiff)
{
  unsigned long rate = 0;
  int i = 14 - aiff->commonChunk.sampleRate[1];
  rate = (aiff->commonChunk.sampleRate[2] << 8) | (aiff->commonChunk.sampleRate[3]);
  rate >>= i;
  
  return rate;
}

//numChannels----------------------------------------------------------------------------
int16_t aiffNumChannels(MKAiff* aiff)
{
  return aiff->commonChunk.numChannels;
}

//setSampleSizeInBits--------------------------------------------------------------------
void aiffSetBitsPerSample(MKAiff* aiff, int16_t numBits)
{
  aiff->commonChunk.bitsPerSample = numBits;
}

//bitsPerSample--------------------------------------------------------------------------
int16_t aiffBitsPerSample(MKAiff* aiff)
{
  return aiff->commonChunk.bitsPerSample;
}

//aiffDurationInSamples------------------------------------------------------------------
int              aiffDurationInSamples        (MKAiff* aiff)
{
  return aiff->numSamplesWrittenToBuffer;
}

//aiffDurationInFrames-------------------------------------------------------------------
int              aiffDurationInFrames         (MKAiff* aiff)
{
  return aiffDurationInSamples(aiff) / aiffNumChannels(aiff);
}

//aiffDurationInSeconds------------------------------------------------------------------
float            aiffDurationInSeconds        (MKAiff* aiff)
{
  return (float)aiffDurationInSamples(aiff) / ((float)aiffSampleRate(aiff) * (float)aiffNumChannels(aiff));
}

//bytesPerSample-------------------------------------------------------------------------
uint16_t aiffBytesPerSample(MKAiff* aiff)
{
  int numBits = (int)aiff->commonChunk.bitsPerSample;
  
  if(numBits <= 8)
    return 1;
  if(numBits <= 16)
    return 2;
  if(numBits <= 24)
    return 3;
  else //(numBits <= 32)
    return 4;
    
  //return 0;
}

//setPlayheadToSeconds-------------------------------------------------------------------
void aiffSetPlayheadToSeconds(MKAiff* aiff, double numSeconds)
{
  int numSamples = numSeconds * aiffSampleRate(aiff) * aiffNumChannels(aiff) + 0.5;
  aiffSetPlayheadToSamples(aiff, numSamples);
}

//setPlayheadToFrames--------------------------------------------------------------------
void aiffSetPlayheadToFrames(MKAiff* aiff, int numFrames)
{
  int numSamples = numFrames * aiffNumChannels(aiff);
  aiffSetPlayheadToSamples(aiff, numSamples);
}

//setPlayheadToSamples-------------------------------------------------------------------
void aiffSetPlayheadToSamples(MKAiff* aiff, int numSamples)
{
  aiffRewindPlayheadToBeginning(aiff);
  aiffAdvancePlayheadBySamples(aiff, numSamples);
}

//advancePlayheadBySeconds---------------------------------------------------------------
void aiffAdvancePlayheadBySeconds(MKAiff* aiff, double numSeconds)
{
  int numSamples = numSeconds * aiffSampleRate(aiff) * aiffNumChannels(aiff) + 0.5;
  aiffAdvancePlayheadBySamples(aiff, numSamples);
}

//advancePlayheadByFrames----------------------------------------------------------------
void aiffAdvancePlayheadByFrames(MKAiff* aiff, int numFrames)
{
  int numSamples = numFrames * aiffNumChannels(aiff);
  aiffAdvancePlayheadBySamples(aiff, numSamples);  
}

//advancePlayheadBySamples---------------------------------------------------------------
void aiffAdvancePlayheadBySamples(MKAiff* aiff, int numSamples)
{
  int offset = aiffPlayheadPositionInSamples(aiff);
  offset += numSamples;
  if(offset <= 0) aiffRewindPlayheadToBeginning(aiff);
  else if(offset > aiff->bufferCapacityInSamples) aiffFastForwardPlayheadToEnd(aiff);
  else aiff->playhead += numSamples;
}

//playheadPositionInSeconds--------------------------------------------------------------
double aiffPlayheadPositionInSeconds(MKAiff* aiff)
{
  return aiffPlayheadPositionInSamples(aiff) / (double)( aiffSampleRate(aiff) * aiffNumChannels(aiff) ); 
}

//playheadPositionInFrames---------------------------------------------------------------
int aiffPlayheadPositionInFrames(MKAiff* aiff)
{
  return aiffPlayheadPositionInSamples(aiff) / aiffNumChannels(aiff);
}

//playheadPositionInSamples--------------------------------------------------------------
int aiffPlayheadPositionInSamples(MKAiff* aiff)
{
  uint64_t offset = (uint64_t)aiff->playhead - (uint64_t)aiff->soundBuffer;
  offset /= 4;
  //printf("offset: %u, bufferSize: %u\n", (unsigned int)offset, (unsigned int)aiff->bufferCapacityInSamples);
  return offset;
}

//rewindPlayheadToBeginning--------------------------------------------------------------
void aiffRewindPlayheadToBeginning(MKAiff* aiff)
{
  aiff->playhead = aiff->soundBuffer;
}

//fastForwardPlayheadToEnd---------------------------------------------------------------
void aiffFastForwardPlayheadToEnd(MKAiff* aiff)
{
  //printf("%i, %i\n", aiff->numSamplesWrittenToBuffer, aiff->bufferCapacityInSamples);
  aiffRewindPlayheadToBeginning(aiff);
  aiff->playhead += aiff->numSamplesWrittenToBuffer;
}

//addComment-----------------------------------------------------------------------------
void aiffAddCommentWithText(MKAiff* aiff, char text[], mkAiffMarkerID_t marker)
{
  if(aiff->commentChunk == NULL)
    {
      aiff->commentChunk = (mkAiffCommentChunk_t*)malloc(sizeof(*(aiff->commentChunk)));
      aiff->commentChunk->chunkID = AIFF_COMMENT_CHUNK_ID;
      aiff->commentChunk->chunkSize = 2; //two bytes for sizeof(aiff->commentChunk->numComments) 
      aiff->commentChunk->numComments = 0;
      aiff->commentChunk->firstComment = NULL;
    }
  mkAiffComment_t* newComment = (mkAiffComment_t*)malloc(sizeof(*newComment));
  newComment->timeStamp = 0;//(uint32_t)time(NULL);
  newComment->markerID = marker;
  newComment->numChars = strlen(text);
  newComment->text = (char*)malloc(newComment->numChars);
  int i;
  for(i=0; i<newComment->numChars; i++) 
    {  newComment->text[i] = text[i];  }
  
  if(aiff->commentChunk->firstComment == NULL)
    {
      aiff->commentChunk->firstComment = newComment;
      newComment->previous = NULL; newComment->next = NULL;
    } 
  else aiffAppendEntryToList((mkAiffListEntry_t*)newComment, (mkAiffListEntry_t*)aiff->commentChunk->firstComment);
  
  aiff->commentChunk->chunkSize += 8;  //for first three variables in mkAiffComment_t
  aiff->commentChunk->chunkSize += newComment->numChars;
  if(newComment->numChars & 0x01) aiff->commentChunk->chunkSize++; //if numChars is odd, it will be padded later, so increment chunkSize now;
  aiff->commentChunk->numComments++;
}

//addMarker------------------------------------------------------------------------------
void aiffAddMarkerWithPositionInSamples(MKAiff* aiff, char name[], mkAiffMarkerID_t markerID, uint32_t positionInSamples)
{
  aiffAddMarkerWithPositionInFrames (aiff, name, markerID, positionInSamples / aiffNumChannels(aiff));
}

void aiffAddMarkerWithPositionInSeconds(MKAiff* aiff, char name[], mkAiffMarkerID_t markerID, double positionInSeconds)
{
  aiffAddMarkerWithPositionInFrames (aiff, name, markerID, positionInSeconds * aiffSampleRate(aiff));
}

void aiffAddMarkerWithPositionInFrames (MKAiff* aiff, char name[], mkAiffMarkerID_t markerID, uint32_t positionInFrames)
{
  if(aiff->markerChunk == NULL)
    {
      aiff->markerChunk = (mkAiffMarkerChunk_t*)malloc(sizeof(*(aiff->markerChunk)));
      aiff->markerChunk->chunkID = AIFF_MARKER_CHUNK_ID;
      aiff->markerChunk->chunkSize = 2; //two bytes for sizeof(aiff->markerChunk->numMarkers) 
      aiff->markerChunk->numMarkers = 0;
      aiff->markerChunk->firstMarker = NULL;
    }
  mkAiffMarker_t* newMarker = (mkAiffMarker_t*)malloc(sizeof(*newMarker));
  newMarker->markerID = markerID;
  newMarker->positionInFrames = positionInFrames;
  
  int count = strlen(name);
  newMarker->name = (char*)malloc(count+1);
  int i;
  (newMarker->name)[0] = count;
  for(i=0; i<count; i++) 
    {  newMarker->name[i+1] = name[i];  }
  
  
  if(aiff->markerChunk->firstMarker == NULL)
    {
      aiff->markerChunk->firstMarker = newMarker;
      newMarker->previous = NULL; newMarker->next = NULL;
    } 
  else aiffAppendEntryToList((mkAiffListEntry_t*)newMarker, (mkAiffListEntry_t*)aiff->markerChunk->firstMarker);
  
  aiff->markerChunk->chunkSize += 6;  //for markerID and positionInFrames
  aiff->markerChunk->chunkSize += count+1;
  if((count+1) & 0x01) aiff->markerChunk->chunkSize++; //if numChars is odd, it will be padded later, so increment chunkSize now;
  aiff->markerChunk->numMarkers++;
}

mkAiffMarker_t* aiffFindMarkerWithCriterion (MKAiff* aiff, mkAiffMarkerCriterion_t criterion, void* value)
{
  if(aiff->markerChunk != NULL)
    {
      mkAiffMarker_t* thisMarker = aiff->markerChunk->firstMarker;
      while(thisMarker != NULL)
       {
         switch(criterion)
           {
             case aiffMarkerCriterionMarkerID:
               if(thisMarker->markerID == *((mkAiffMarkerID_t*)value))
                 return thisMarker;
             break;
             case aiffMarkerCriterionName:
                if(strcmp(thisMarker->name, (char*)value))
                  return thisMarker;
             break;
           } 
         thisMarker = (mkAiffMarker_t*)(thisMarker->next);
       }
    }
  return NULL;
}

aiffYesOrNo_t aiffPositionInFramesOfMarkerWithID  (MKAiff* aiff, mkAiffMarkerID_t markerID, uint32_t* result)
{
  mkAiffMarker_t* marker = aiffFindMarkerWithCriterion(aiff, aiffMarkerCriterionMarkerID, &markerID);
  if(marker == NULL) return aiffNo;
  *result = marker->positionInFrames;
  return aiffYes;
}
aiffYesOrNo_t aiffPositionInFramesOfMarkerWithName(MKAiff* aiff, char* name, uint32_t* result)
{
  mkAiffMarker_t* marker = aiffFindMarkerWithCriterion(aiff, aiffMarkerCriterionName, name);
  if(marker == NULL) return aiffNo;
  *result = marker->positionInFrames;
  return aiffYes;
}
aiffYesOrNo_t aiffNameOfMarkerWithID (MKAiff* aiff, mkAiffMarkerID_t markerID, char** result)
{
  mkAiffMarker_t* marker = aiffFindMarkerWithCriterion(aiff, aiffMarkerCriterionMarkerID, &markerID);
  if(marker == NULL) return aiffNo;
  *result = marker->name;
  return aiffYes;
}
aiffYesOrNo_t aiffMarkerIDOfMarkerWithName        (MKAiff* aiff, char* name, mkAiffMarkerID_t* result)
{
  mkAiffMarker_t* marker = aiffFindMarkerWithCriterion(aiff, aiffMarkerCriterionName, name);
  if(marker == NULL) return aiffNo;
  *result = marker->markerID;
  return aiffYes;
}

//setupInstrumentInfo--------------------------------------------------------------------
void aiffSetupInstrumentInfo(MKAiff*          aiff,
                             int8_t           baseNote,     
                             int8_t           detune,       
                             int8_t           lowNote,      
                             int8_t           highNote,     
                             int8_t           lowVelocity,  
                             int8_t           highVelocity, 
                             int16_t          decibelsGain, 
                             int16_t          sustainLoopPlayMode,     
                             mkAiffMarkerID_t sustainLoopStartMarkerID,
                             mkAiffMarkerID_t sustainLoopEndMarkerID,
                             int16_t          releaseLoopPlayMode,     
                             mkAiffMarkerID_t releaseLoopStartMarkerID,
                             mkAiffMarkerID_t releaseLoopEndMarkerID)
{
  if(aiff->instrumentChunk != NULL)
    aiffRemoveInstrumentInfo(aiff);
  aiff->instrumentChunk = (mkAiffInstrumentChunk_t*)malloc(sizeof(*(aiff->instrumentChunk)));
  aiff->instrumentChunk->chunkID                   = AIFF_INSTRUMENT_CHUNK_ID;
  aiff->instrumentChunk->chunkSize                 = 20;
  aiff->instrumentChunk->baseNote                  = baseNote;
  aiff->instrumentChunk->detune                    = detune;
  aiff->instrumentChunk->lowNote                   = lowNote;
  aiff->instrumentChunk->highNote                  = highNote;
  aiff->instrumentChunk->lowVelocity               = lowVelocity;
  aiff->instrumentChunk->highVelocity              = highVelocity;
  aiff->instrumentChunk->decibelsGain              = decibelsGain;
  aiff->instrumentChunk->sustainLoop.playMode      = sustainLoopPlayMode;
  aiff->instrumentChunk->sustainLoop.startMarkerID = sustainLoopStartMarkerID;
  aiff->instrumentChunk->sustainLoop.endMarkerID   = sustainLoopEndMarkerID;
  aiff->instrumentChunk->releaseLoop.playMode      = releaseLoopPlayMode;
  aiff->instrumentChunk->releaseLoop.startMarkerID = releaseLoopStartMarkerID;
  aiff->instrumentChunk->releaseLoop.startMarkerID = releaseLoopEndMarkerID;
}

aiffYesOrNo_t    aiffHasInstrumentInfo                 (MKAiff* aiff)
{return (aiff->instrumentChunk == NULL) ? aiffNo : aiffYes;}
int8_t           aiffInstrumentBaseNote                (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->baseNote                  : 0;}
int8_t           aiffInstrumentDetune                  (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->detune                    : 0;}
int8_t           aiffInstrumentLowNote                 (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->lowNote                   : 0;}
int8_t           aiffInstrumentHighNote                (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->highNote                  : 0;}
int8_t           aiffInstrumentLowVelocity             (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->lowVelocity               : 0;}
int8_t           aiffInstrumentHighVelocity            (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->highVelocity              : 0;}
int16_t          aiffInstrumentDecibelsGain            (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->decibelsGain              : 0;}
int16_t          aiffInstrumentSustainLoopPlayMode     (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->sustainLoop.playMode      : 0;}
mkAiffMarkerID_t aiffInstrumentSustainLoopStartMarkerID(MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->sustainLoop.startMarkerID : 0;}
mkAiffMarkerID_t aiffInstrumentSustainLoopEndMarkerID  (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->sustainLoop.endMarkerID   : 0;}
int16_t          aiffInstrumentReleaseLoopPlayMode     (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->releaseLoop.playMode      : 0;}
mkAiffMarkerID_t aiffInstrumentReleaseLoopStartMarkerID(MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->releaseLoop.startMarkerID : 0;}
mkAiffMarkerID_t aiffInstrumentReleaseLoopEndMarkerID  (MKAiff* aiff)
{return (aiffHasInstrumentInfo(aiff)) ? aiff->instrumentChunk->releaseLoop.startMarkerID : 0;}

//setName--------------------------------------------------------------------------------
void             aiffSetName                  (MKAiff* aiff, char* text)
{
  if(aiff->nameChunk != NULL) 
    aiffRemoveName(aiff);
  aiff->nameChunk = aiffCreateTextChunk(EA_IFF85_NAME_CHUNK_ID, text);
}

//setAuthor------------------------------------------------------------------------------
void             aiffSetAuthor                (MKAiff* aiff, char* text) 
{
  if(aiff->authorChunk != NULL) 
    aiffRemoveAuthor(aiff);
  aiff->authorChunk = aiffCreateTextChunk(EA_IFF85_AUTHOR_CHUNK_ID, text);
}

//setCopyright---------------------------------------------------------------------------
void             aiffSetCopyright             (MKAiff* aiff, char* text)
{
  if(aiff->copyrightChunk != NULL) 
    aiffRemoveCopyright(aiff);
  aiff->copyrightChunk = aiffCreateTextChunk(EA_IFF85_COPYRIGHT_CHUNK_ID, text);
}

//addAnnotation--------------------------------------------------------------------------
void             aiffAddAnnotation            (MKAiff* aiff, char* text)
{
  mkEAiff85TextChunk_t* annotationChunk = aiffCreateTextChunk(EA_IFF85_ANNOTATION_CHUNK_ID, text); 
  if(aiff->annotationChunkList == NULL) 
    aiff->annotationChunkList = annotationChunk;
  else aiffAppendEntryToList((mkAiffListEntry_t*)annotationChunk, (mkAiffListEntry_t*)aiff->annotationChunkList);
}

//addGenericChunk------------------------------------------------------------------------
void aiffAddGenericChunk(MKAiff* aiff, unsigned char* data, int32_t sizeOfData, aiffChunkIdentifier_t chunkID)
{
  mkAiffGenericChunk_t* genericChunk = (mkAiffGenericChunk_t*)malloc(sizeof(*genericChunk));
  genericChunk->previous = genericChunk->next = NULL;
  genericChunk->chunkID = chunkID;
  genericChunk->chunkSize = sizeOfData;
  genericChunk->data = (char*)malloc(sizeOfData);
  int i;
  for(i=0; i<sizeOfData; i++)(genericChunk->data)[i] = data[i];
  if(aiff->unknownChunkList == NULL) 
    aiff->unknownChunkList = genericChunk;
  else aiffAppendEntryToList((mkAiffListEntry_t*)genericChunk, (mkAiffListEntry_t*)aiff->unknownChunkList);
  
}

//destroy--------------------------------------------------------------------------------
MKAiff* aiffDestroy(MKAiff* aiff)
{
  if(aiff != NULL)
    {
      if(aiff->soundBuffer != NULL)
         free(aiff->soundBuffer);
      if(aiff->commentChunk != NULL)
         aiffRemoveAllComments(aiff);
      if(aiff->markerChunk != NULL)
         aiffRemoveAllMarkers(aiff);
      if(aiff->instrumentChunk != NULL)
         aiffRemoveInstrumentInfo(aiff);
      if(aiff->nameChunk != NULL)
        aiffRemoveName(aiff);
      if(aiff->authorChunk != NULL)
        aiffRemoveAuthor(aiff); 
      if(aiff->copyrightChunk != NULL)
        aiffRemoveCopyright(aiff);  
      if(aiff->annotationChunkList != NULL)
        aiffRemoveAllAnnotations(aiff); 
      if(aiff->unknownChunkList != NULL)
        aiffRemoveAllGenericChunks(aiff);         
      free(aiff);
    }
  
  return (MKAiff*)NULL;
}





