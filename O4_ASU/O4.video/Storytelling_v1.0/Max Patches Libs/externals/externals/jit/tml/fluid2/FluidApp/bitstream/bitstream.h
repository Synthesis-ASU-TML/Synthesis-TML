/*
 *  bitstream.h
 *  FluidApp
 */

#ifndef BITSTREAM_H
#define BITSTREAM_H

#include "memory.h"
#include "field.h"

//Basic bit-stream allows for reading/writing to a bit-stream
typedef struct BitStream BitStream;

BitStream *bitStreamCreate(int in_maxSize);
void bitStreamReset(BitStream *bs);
void bitStreamClear(BitStream *bs);
void bitStreamPush(BitStream *bs, int val, int bits);
int bitStreamRead(BitStream*bs, int bits);

int bitStreamSize(BitStream *bs);

//For bit-streams - we require a buffer 2*(width) to store data
//temporarily.
//
//	For threading, rows are done individually...
void bitStreamEncodeField(BitStream *bs, field *f, void *buff, int r);
void bitStreamDecodeField(BitStream *bs, field *f, void *buff, int r);

//	Alternate encoder based on FELICS - faster & simpler!
void bitStreamEncodeFelics(BitStream *bs, field *f, void *buff, int r);
void bitStreamDecodeFelics(BitStream *bs, field *f, void *buff, int r);

//	Next, is the header which describes the field...
void bitStreamEncodeFieldHeader(BitStream *bs, field *f);
void bitStreamDecodeFieldHeader(BitStream *bs, int *w, int *h, int *c);

#endif
