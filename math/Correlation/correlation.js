/*
correlation.js

Perform signal correlation on control-rate data.

This makes use of the convolution property which 
says the the Fourier Transform converts convolution
into multiplication. So, the signals are windowed, 
transformed, multiplied, and inverse-transformed.

Made by Michael Krzyzaniak at the Synthesis Center
Under the direction of Sha Xin Wei, at Arizona State
University's School of Arts, Media and Engineering 
in Fall of 2014.

mkrzyzan@asu.edu

Based on an ANSI C Radix 2 Decimitaion in Time
Short Term Fourier Transform implementation
also by Michael Krzyzaniak. Some remenants of that 
implementation still exist in this file for future 
development.
*/

inlets  = 2;
outlets = 1;

var REAL_INLET_1 = 0;
var REAL_INLET_2 = 1;
//var IMAG_INLET = 1;

var MAGNITUDE_OUTLET   = 0;
//var PHASE_OUTLET = 1;

setinletassist(REAL_INLET_1, "real values or a list of values");
setinletassist(REAL_INLET_2, "imaginary values or a list of values");

setoutletassist(MAGNITUDE_OUTLET  , "fft magnitudes");
//setoutletassist(PHASE_OUTLET, "fft phases");
//setoutletassist(FREQ_OUTLET, "estimation of fundamental");

var fft_size = 64;

if(jsarguments.length > 1)
  fft_size = jsarguments[1];

//public functions way at the bottom of this file...

Math.TWO_PI = 2 * Math.PI;
Math.hypot =  function(x, y){return Math.sqrt((x*x)+(y*y))};

/*OpaqueFFTStruct-----------------------------------------------*/
function STFT(numSamples)
{
  this.numSamples = numSamples; //may be arbitrary
  this.N                     = smallestPowerOfTwoGreaterThanOrEqualTo(numSamples)
  //this.overlap               = 1/4 * numSamples; 
  this.realSlidingInput      = []; this.realSlidingInput.length  = numSamples * 2;
  this.imagSlidingInput      = []; this.imagSlidingInput.length  = numSamples * 2;
  this.realSlidingOutput     = []; this.realSlidingOutput.length = numSamples * 2;
  this.imagSlidingOutput     = []; this.imagSlidingOutput.length = numSamples * 2;
  this.real                  = []; this.real.length = this.N;
  this.imag                  = []; this.imag.length = this.N;
  this.analysisWindowBuffer  = []; this.analysisWindowBuffer.length  = this.N;
  this.synthesisWindowBuffer = []; this.synthesisWindowBuffer.length = this.N;

  this.analysisWindowFunction  = null;
  this.synthesisWindowFunction = null;

/*
  var i;
  for(i=0; i<this.numSamples; i++)
    {
      this.realSlidingInput[i+this.numSamples] =0;
      this.imagSlidingInput[i+this.numSamples] =0;
      this.realSlidingOutput[i+this.numSamples] =0;
      this.imagSlidingOutput[i+this.numSamples] =0;
    }
*/

  this.setOverlap (7.0/8.0);
  //this.setOverlap (0);
  this.setWindowFunct (fftBlackmanWindow, true );
  this.setWindowFunct (fftBlackmanWindow, false);
};


/*-----------------------------------------------------------------------*/
STFT.prototype.transform = function(realIn, imagIn, numInSamples, inverse, bitReversedOutput, polarOutput)
{
  var i;
  var result = {real: [], imag: []};

  this.setAndShiftSlidingInput(realIn, imagIn, numInSamples);
  this.real = this.realSlidingInput.splice(this.numSamples, this.numSamples);
  this.imag = this.imagSlidingInput.splice(this.numSamples, this.numSamples);

  if(!this.inverse)
    this.applyWindow(true);

  if(!bitReversedOutput)
    this.bitReverseIndices();

  this.radix2DIT(inverse);

  if(polarOutput)
    this.rectangularToPolar();

  //this.scaleMagnitudes(0, 1);

  result.real = this.real.splice(0, this.numSamples);
  result.imag = this.imag.splice(0, this.numSamples);
  return result;
}

/*-----------------------------------------------------------------------*/
/*
void     fftCepstrum               (FFT*          self              ,
                                    fftSample_t*  realIn            ,
                                    fftSample_t*  imagIn            ,
                                    int           numInSamples      ,
                                    fftSample_t** realOut           ,
                                    fftSample_t** imagOut           ,
                                    BOOL          bitReversedOutput ,
                                    float         coefficient      )
{
  CONSTRAIN(coefficient, 0.0, 1.0);
  int N = fftN(self);
  int cutoff;
  fftSample_t *r, *s, *i, *j;
  fftSetAndShiftSlidingInput(self, realIn, imagIn, numInSamples);
  memcpy(this.real, this.realSlidingInput + this.numSamples, this.numSamples * sizeof(fftSample_t));
  memcpy(this.imag, this.imagSlidingInput + this.numSamples, this.numSamples * sizeof(fftSample_t));
  fftApplyWindow(self, YES);
  //if(!bitReversedOutput) //reversing them here causes normal order output
  fftBitReverseIndices(self);
  fftRadix2DIT(self, NO);
  fftRectangularToPolar(self);
  //fftScaleMagnitudes(self, 0, 1);

  N = fftN(self);  
  r = this.real;
  while(N-- > 0)
    {
      *r = log10(*r + 1);
      r++;
    }

  fftSetAndShiftSlidingInput(self, this.real, NULL, this.N);
  memcpy(this.real, this.realSlidingInput + this.numSamples, this.numSamples * sizeof(fftSample_t));
  memcpy(this.imag, this.imagSlidingInput + this.numSamples, this.numSamples * sizeof(fftSample_t));
  fftBitReverseIndices(self);
  fftRadix2DIT(self, YES);

  
  N = fftN(self);
  cutoff = (1-coefficient) * N / 2;
  r = this.real + cutoff;
  s = this.real + N - (1 + cutoff);
  i = this.imag + cutoff;
  j = this.imag + N - (1 + cutoff);  
  N = N/2 - cutoff;
  while(N-- > 0)
    *r++ = *s-- = *i++ = *j-- = 0;

  fftBitReverseIndices(self);
  fftRadix2DIT(self, YES);  
  fftRectangularToPolar(self);
  fftScaleMagnitudes(self, 0, 1.0);
  
  memcpy(this.realSlidingOutput, this.real, this.N * sizeof(fftSample_t));
  memcpy(this.imagSlidingOutput, this.imag, this.N * sizeof(fftSample_t));
  if(realOut != NULL)
    *realOut = this.realSlidingOutput;
  if(imagOut != NULL)
    *imagOut = this.imagSlidingOutput;
}
*/
/*-----------------------------------------------------------------------*/
/*
void     fftFilter(FFT* self, fftSample_t*  realIn_arg , fftSample_t* imagIn_arg, int numInSamples, 
                              fftSample_t** realOut_arg, fftSample_t** imagOut_arg, 
                              fftSample_t* impulseResponse, int numImpulseSamples, float brightness)
{
  CONSTRAIN(numImpulseSamples, 0, this.N);
  
  fftSample_t *realIn  = this.realSlidingInput , *imagIn  = this.imagSlidingInput ;
  fftSample_t *realOut = this.realSlidingOutput, *imagOut = this.imagSlidingOutput, *r, *i;
  fftSample_t *real, *imag, *realBackwards, *imagBackwards;
  fftSample_t* spectrum;
  int overlap = this.overlap, numFFTs = this.numSamples / overlap, n;
  int N = this.N, j;
  fftSample_t nextBrightness;
  
  brightness /= (N / 16);
  
  fftSetAndShiftSlidingInput(self, realIn_arg, imagIn_arg, numInSamples);
  fftShiftSlidingOutput     (self);
  
  while(numFFTs-- > 0)
    {
      n = this.numSamples;
      real = this.real;
      imag = this.imag;
      realIn += overlap;
      imagIn += overlap;
      memcpy(real, realIn, n * sizeof(fftSample_t));
      memcpy(imag, imagIn, n * sizeof(fftSample_t));
      real += n;
      imag += n;
      while(n++ < N)
        *real++ = *imag++ = 0;
      
      fftApplyWindow(self, YES);
      fftBitReverseIndices(self);
      fftRadix2DIT(self, 0);      

      real = this.real;
      imag = this.imag;
      spectrum = impulseResponse;
      
      
      realBackwards = real + this.numSamples - 1;
      imagBackwards = imag + this.numSamples - 1;
      n = numImpulseSamples / 2;
      for(j=0; j<n; j++)//while(n-- > 0)
        {
          nextBrightness    = brightness * j + 1;
          if(nextBrightness < 0) nextBrightness = 0;
          nextBrightness   *= *spectrum;
          *real++          *= nextBrightness;
          *imag++          *= nextBrightness;
          *realBackwards-- *= nextBrightness;
          *imagBackwards-- *= nextBrightness;
          spectrum++;
        }
      n = (N - numImpulseSamples) / 2;
      while(n-- > 0)
        *real++ = *imag++ = *realBackwards-- = *imagBackwards-- = 0;

      fftBitReverseIndices  (self);
      fftRadix2DIT          (self, 1);
      fftApplyWindow        (self, NO);
      
      real = this.real;
      imag = this.imag;
      r = realOut;
      i = imagOut;
      n = this.numSamples;
      while(n-- > 0)
        {
          *r++ += *real++;
          *i++ += *imag++;
        }
      realOut += overlap;
      imagOut += overlap;
    }
  if(realOut_arg != NULL)
    *realOut_arg = this.realSlidingOutput;
  if(imagOut_arg != NULL)
    *imagOut_arg = this.imagSlidingOutput;
}

/*-----------------------------------------------------------------------*/
STFT.prototype.setAndShiftSlidingInput = function(_real, _imag /*or null*/, numValidSamples)
{
  numValidSamples = CONSTRAIN(numValidSamples, 0, this.numSamples);
  
  var n, i, j;
  var source, dest;
  
  for(i=0; i<this.numSamples; i++)
    this.realSlidingInput[i] = this.realSlidingInput[i + this.numSamples];
  
  for(i=0; i<numValidSamples; i++)
    this.realSlidingInput[i + this.numSamples] = _real[i];
  
  for(i=numValidSamples; i<this.numSamples; i++)
    this.realSlidingInput[i + this.numSamples] = 0;

  for(i=0; i<this.numSamples; i++)
    this.imagSlidingInput[i] = this.imagSlidingInput[i+this.numSamples];  

  if(_imag != null)
    {  
      for(i=0; i<numValidSamples; i++)
        this.imagSlidingInput[i+this.numSamples] = _imag[i]
    }
  else n = 0;

  for(i/* = 0 or numValidSamples*/; i<this.numSamples; i++)
    this.imagSlidingInput[i+this.numSamples] = 0;    
}

/*-----------------------------------------------------------------------*/
STFT.prototype.shiftSlidingOutput = function()
{
  //probably a faster way to do this using splice
  var n=this.numSamples;
  for(i=0; i<n; i++)
    {
      this.realSlidingOutput[i] = this.realSlidingOutput[n+i];
      this.realSlidingOutput[n+i] = 0;
      this.imagSlidingOutput[i] = this.imagSlidingOutput[n+i];
      this.imagSlidingOutput[n+i] = 0;
    }
}

/*-----------------------------------------------------------------------*/
/*
void   fftFlush                 (FFT* self)
{
  int n = this.numSamples;
  fftSample_t *a, *b, *c, *d;
  //don't worry about the lower half of the buffers, 
  //they will be flushed on the next call to fftSetData()
  a = this.realSlidingInput  + n;
  b = this.imagSlidingInput  + n;
  c = this.realSlidingOutput + n;
  d = this.imagSlidingOutput + n;
  
  while(n-- > 0)
    *a++ = *b++ = *c++ = *d++ = 0;
}
*/
/*-----------------------------------------------------------------------*/
STFT.prototype.setWindowFunct = function(windowFunct, /*BOOL*/ analysis)
{
  var i;
  var buffer = (analysis) ? this.analysisWindowBuffer : this.synthesisWindowBuffer;
  if (analysis) 
    this.analysisWindowFunct = windowFunct; 
  else 
    this.synthesisWindowFunct = windowFunct;
    
  if(windowFunct != null)
    {
      windowFunct(buffer, this.numSamples);
      for(i=this.numSamples; i<this.N; i++)
        buffer[i] = 0;
    }
}

/*-----------------------------------------------------------------------*/
/*
fftWindowFunct_t fftWindowFunction(FFT* self, BOOL analysis)
{
  return (analysis) ? this.analysisWindowFunct : this.synthesisWindowFunct;
}
*/

/*-----------------------------------------------------------------------*/
STFT.prototype.radix2DIT = function(isInverse)
{
  var twoPiOverN = Math.TWO_PI / this.N;
  var omegaTwoPiOverN;
  var subTransform, butterfly;
  
  var numSubTransforms = this.N, numButterflies = 1, omega;
  var wr, wi, r=this.real, i=this.imag, tempr, tempi;

  var arrayOffset = 0;
  
  while((numSubTransforms >>= 1) > 0)
    {
	  arrayOffset = 0;
      //r = real, i = imag;
      for(subTransform=0; subTransform<numSubTransforms; subTransform++)
        {
          omega = 0;
          for(butterfly=0; butterfly<numButterflies; butterfly++)
            {
              omegaTwoPiOverN = omega * twoPiOverN;
              tempr   =  Math.cos(omegaTwoPiOverN);
              tempi   = -Math.sin(omegaTwoPiOverN);
              if(isInverse)
                tempi = -tempi;
              wr = (r[numButterflies + arrayOffset] * tempr) - (i[numButterflies + arrayOffset] * tempi);
              wi = (r[numButterflies + arrayOffset] * tempi) + (i[numButterflies + arrayOffset] * tempr);
              tempr = r[arrayOffset]; tempi = i[arrayOffset];
              r[arrayOffset] += wr;
              i[arrayOffset] += wi;
              r[numButterflies + arrayOffset] = tempr - wr;
              i[numButterflies + arrayOffset] = tempi - wi;
              omega += numSubTransforms;
              //r++, i++;
              arrayOffset++;
            }
            //r += numButterflies, i += numButterflies;
            arrayOffset += numButterflies;
        }
      numButterflies <<= 1;
    }
 
    if(isInverse)
      {
        for(omega=0; omega<this.N; omega++)//just reuse some damn variable
          {
            this.real[omega] /= this.N;
            this.imag[omega] /= this.N;
          }
      }
}

/*-----------------------------------------------------------------------*/
STFT.prototype.bitReverseIndices = function()
{
  var NMinus1 = this.N-1;
  var highestBit = this.N >> 1;
  var n, nextBit, nReversed=0;
  var temp;
  
  for(n=1; n<this.N; n++)
    {
      nextBit = highestBit;
      while((nextBit + nReversed) > NMinus1) nextBit >>= 1;  //find highest unpopulated bit
      nReversed &= nextBit - 1;                              //clear all higher bits
      nReversed |= nextBit;                                  //set new bit
      
      if(nReversed > n)
        {
          temp                 = this.real[n]        ;
          this.real[n]         = this.real[nReversed];
          this.real[nReversed] = temp                ;
          temp                 = this.imag[n]        ;
          this.imag[n]         = this.imag[nReversed];
          this.imag[nReversed] = temp                ;          
        }
    }
}

/*-----------------------------------------------------------------------*/
STFT.prototype.rectangularToPolar = function()
{
  var i;
  var temp;
  
  for(i=0; i<this.N; i++)
    {
      temp = this.real[i];
      this.real[i] = Math.hypot(this.real[i], this.imag[i]);
      this.imag[i] = Math.atan2(this.imag[i], temp);
    }
}

/*-----------------------------------------------------------------------*/
STFT.prototype.scaleMagnitudes = function(min, max)
{
  var minSample = new Number(1000000);
  var maxSample = 0;
  var i;
  
  for(i=0; i<this.N; i++)
    {
      if(this.real[i] < minSample)
        minSample = this.real[i];
      if(this.real[i] > maxSample)
        maxSample = this.real[i];
    }
    
  for(i=0; i<this.N; i++)
    this.real[i] = scalef(this.real[i], minSample, maxSample, min, max);
}

/*-----------------------------------------------------------------------*/
STFT.prototype.setOverlap = function(overlap)
{
  var temp = this.numSamples * overlap;
  temp = this.numSamples - temp;
  temp = CONSTRAIN(temp, 1, this.numSamples);
  this.overlap = temp;
}

/*-----------------------------------------------------------------------*/

STFT.prototype.getOverlap = function()
{
  return (this.N - this.overlap) / this.numSamples;
}


/*-----------------------------------------------------------------------*/
STFT.prototype.applyWindow = function(/*BOOL*/analysis)
{
  var funct = (analysis) ? this.analysisWindowFunct : this.synthesisWindowFunct;
  if(funct != null)
    {
      var i;
      var windowBuffer = (analysis) ? this.analysisWindowBuffer : this.synthesisWindowBuffer;
  
      for(i=0; i<this.N; i++)
        {
          this.real[i] *= windowBuffer[i];
          this.imag[i] *= windowBuffer[i];
        }
    }
}

/*-----------------------------------------------------------------------*/
/*
function fftRectWindow(windowBuffer, bufferSize)
{
  var i;
  for(i=0; i<bufferSize; i++)
    windowBuffer[i] = 1;
}
*/

var fftRectWindow = null;

/*-----------------------------------------------------------------------*/
function fftHannWindow(windowBuffer, bufferSize)
{
  var i;
  var phase = 0;
  var phaseIncrement = Math.TWO_PI / bufferSize;
  for(i=0; i<bufferSize; i++)
    {
      windowBuffer[i] = 0.5 * (1-Math.cos(phase));
      phase += phaseIncrement;
    }  
}

/*-----------------------------------------------------------------------*/
function fftHammingWindow(windowBuffer, bufferSize)
{
  var i;
  var phase = 0;
  var phaseIncrement = Math.TWO_PI / bufferSize;
  for(i=0; i<bufferSize; i++)
    {
      windowBuffer[i] = 0.54 - (0.46 * Math.cos(phase));
      phase += phaseIncrement;
    }  
}

/*-----------------------------------------------------------------------*/
function fftBlackmanWindow(windowBuffer, bufferSize)
{
  var i;
  var phase = 0;
  var phaseIncrement = Math.TWO_PI / bufferSize;
  var a = 0;
  var a0 = (1-a)/2.0;
  var a1 = 1/2.0;
  var a2 = a/2.0;
  
  for(i=0; i<bufferSize; i++)
    {
      windowBuffer[i] = a0 - (a1 * Math.cos(phase)) + (a2 * Math.cos(2*phase));
      phase += phaseIncrement;
    }  
}

/*-----------------------------------------------------------------------*/
function smallestPowerOfTwoGreaterThanOrEqualTo(n)
{
  var result = 1;
  while(result < n)
    result <<= 1;
  return result;
}

/*-----------------------------------------------------------------------*/
function scalef(x, in_min, in_max, out_min, out_max)
{
  return (((x - in_min) * (out_max - out_min)) / (in_max - in_min)) + out_min;
}

/*-----------------------------------------------------------------------*/
function CONSTRAIN(val, min, max)
{
  if(val < min) val = min;
  if(val > max) val = max;
  return val;
}

/*-----------------------------------------------------------------------*/
//assumes polar coords;
STFT.prototype.findFundamental = function()
{
  var highest     =-1, secondHighest     =-1;
  var highestIndex= 0, secondHighestIndex= 0;
  var i;

  //don't consider the DC component a frequency
  for(i=1; i<(this.numSamples/2.0); i++)
    {
      if(this.real[i] > highest)
        {
	      secondHighest = highest;
	      highest = this.real[i];
	      secondHighestIndex = highestIndex;
	      highestIndex = i;
        }
      else if(this.real[i] > secondHighest)
        {
	      secondHighest = this.real[i];
	      secondHighestIndex = i;
        }
    }
  return vertexOfParabolaPassingThroughPoints(highestIndex, highest, secondHighestIndex, secondHighest);
}

/*-----------------------------------------------------------------------*/
function vertexOfParabolaPassingThroughPoints(x1, y1, x2, y2)
{
  if(y1 == 0) return 0;  

  //should be y1 / y2 but this inverts points to find correct frequency  
  v =  Math.sqrt(y2) / Math.sqrt(y1);

  return (x1 + (v*x2)) / (1 + v);
}

/*-----------------------------------------------------------------------*/
var real_index1=0; real_index2=0;
var fft_real1 = [];
var fft_real2 = [];
var fft_imag1 = [];
var fft_imag2 = [];
var stft1 = new STFT(fft_size);
var stft2 = new STFT(fft_size);
var inverse_stft = new STFT(fft_size);

for(var i=0; i<fft_size; i++)
  fft_real1[i] = fft_real2[i] = fft_imag1[i] = fft_imag2[i] = 0;


/*-------------------------------------------*/
function list()
{
  var a = arrayfromargs(arguments);
  while(a.length)
    msg_float(a.shift());
}

/*-------------------------------------------*/
function msg_int(n)
{
  msg_float();
}

/*-------------------------------------------*/
function msg_float(n)
{
  switch(inlet)
    {
      case REAL_INLET_1:
        //fft_real[real_index] = n;
        fft_real1.push(n);
        fft_real1.shift();
        real_index1++; real_index1 %= fft_size * (1 - stft1.getOverlap());
        if(real_index1 == 0)
          {
            var result = correlate();
            outlet(MAGNITUDE_OUTLET, result.real/*.splice(0, fft_size >> 1)*/);
          }
        break;

      case REAL_INLET_2:
        fft_real2.push(n);
        fft_real2.shift();         
        break;
      
      default: break;
    }
}

/*-------------------------------------------*/
function correlate()
{
  //STFT.prototype.transform = function(realIn, imagIn, numInSamples, inverse, bitReversedOutput, polarOutput)
  var fft1 = stft1.transform(fft_real1, fft_imag1, fft_size, false, false, false);
  var fft2 = stft2.transform(fft_real2, fft_imag2, fft_size, false, false, true );

  var i, temp;
  for(i=0; i<fft_size; i++)
    {
	  /* fft2 is magnitude and phase, not really real and imag*/
	  fft1.real[i] *= fft2.real[i];
	  fft1.imag[i] *= fft2.real[i];
    }

  return inverse_stft.transform(fft1.real, fft1.imag, fft_size, true, false, true);
  outlet(MAGNITUDE_OUTLET, result.real.splice(0, fft_size >> 1));
  //outlet(PHASE_OUTLET, result.imag);
}