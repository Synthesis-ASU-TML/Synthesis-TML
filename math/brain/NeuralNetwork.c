#include <math.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "NeuralNetwork.h"


NeuralNetwork* nnAllocate                    (int numLayers, nnNeuronCount_t* numNeurons);
void           nnScrambleTraningBuffers      (nnNeuronData_t** inputBuffers, nnNeuronData_t** targetOutputBuffers, int numDataSets);
int            nnReadOrWriteDynamicArrays    (NeuralNetwork* self, size_t(*readOrWrite)(void*, size_t, size_t, FILE*), FILE* file);
void           nnCopyInputToInputBuffer      (NeuralNetwork* self, nnNeuronData_t* input, nnNeuronCount_t numInputs);
void           nnDefaultAnnealingFunction    (nnNeuronData_t* learningRate, nnNeuronData_t* annealingRate, nnNeuronCount_t generation);
double         rand01();

/***********************************************************************************/
double rand01()
{
  return random() / (double)RAND_MAX;
}

/***********************************************************************************/
void nnActivationFunctionSigmoid(nnNeuronData_t* value)
{
  *value = (1.0 / (1.0 + exp(-*value)));
}
nnNeuronData_t nnActivationDerivativeSigmoid(nnNeuronData_t value)
{
  nnNeuronData_t derivative;
 	derivative =  (1.0 / (1.0 + exp(-value)));
	derivative = derivative * (1-derivative);
  return derivative; 
}

/***********************************************************************************/
void           nnActivationFunctionTanh      (nnNeuronData_t* value)
{
  nnNeuronData_t eToTheValue;

  if(*value > 160) //catch overflows and NaNs
    *value = 1;
  else
    {
      *value *= 2;
      eToTheValue = pow(M_E, *value);
      *value = (eToTheValue-1) / (eToTheValue+1);
    }
  /* why not just
    *value = tanh(*value * scaleFactor);
  */
}

/***********************************************************************************/
nnNeuronData_t nnActivationDerivativeTanh    (nnNeuronData_t  value)
{
  nnActivationFunctionTanh(&value);
  return (1 - pow(value, 2));
}

/***********************************************************************************/
void           nnActivationFunctionLinear    (nnNeuronData_t* value)
{
  return;
}

/***********************************************************************************/
nnNeuronData_t nnActivationDerivativeLinear  (nnNeuronData_t  value)
{
  return 1;
}

/***********************************************************************************/
void nnDefaultAnnealingFunction (nnNeuronData_t* learningRate, nnNeuronData_t* annealingRate, nnNeuronCount_t generation)
{
  if(generation > 15)
    *learningRate *= *annealingRate;
}

/***********************************************************************************/
NeuralNetwork* nnAllocate(int numLayers, nnNeuronCount_t* numNeurons)
{
  nnNeuronCount_t layer, neuron;
  NeuralNetwork* self = (NeuralNetwork*)malloc(sizeof(*self));

  if(self == NULL) return nnDestroy(self);
  
  OBJECT_INIT(nn);
  self->numNeurons           = NULL;
  self->weight               = NULL;
  self->error                = NULL;
  self->neuronOutput         = NULL;
  self->activationFunction   = NULL;
  self->activationDerivative = NULL;
  self->learningRate         = 1;
  self->annealingRate        = 0.98; 
  self->annealingFunction    = nnDefaultAnnealingFunction;
  self->numLayers            = numLayers;
  self->numNeurons   = (nnNeuronCount_t*) malloc(numLayers * sizeof(self->numNeurons  [0] ));
  self->weight       = (nnNeuronData_t***)malloc(numLayers * sizeof(self->weight      [0] ));
  self->restState    = (nnNeuronData_t**) malloc(numLayers * sizeof(self->restState   [0] ));
  self->error        = (nnNeuronData_t**) malloc(numLayers * sizeof(self->error       [0] ));
  self->neuronOutput = (nnNeuronData_t**) malloc(numLayers * sizeof(self->neuronOutput[0] ));
  if((self->error == NULL) || (self->restState == NULL) || (self->weight == NULL) || (self->neuronOutput == NULL) || (self->numNeurons == NULL) ) return nnDestroy(self);
  
  for(layer=0; layer<numLayers; layer++) //input layer has no rest state or error or weights;
    {
      self->numNeurons[layer]   = *numNeurons++;
      self->neuronOutput[layer] = (nnNeuronData_t*)malloc(self->numNeurons[layer] * sizeof(self->neuronOutput[layer][0]));
      if(self->neuronOutput[layer] == NULL) return nnDestroy(self);
      if(layer > 0)
        {
          self->weight   [layer] = (nnNeuronData_t**)malloc(self->numNeurons[layer] * sizeof(self->weight   [layer][0] ));
          self->restState[layer] = (nnNeuronData_t*) malloc(self->numNeurons[layer] * sizeof(self->restState[layer][0] ));
          self->error    [layer] = (nnNeuronData_t*) malloc(self->numNeurons[layer] * sizeof(self->error    [layer][0] ));
          if((self->error[layer] == NULL) || (self->restState[layer] == NULL) || (self->weight[layer] == NULL)) return nnDestroy(self);

          for(neuron=0; neuron<self->numNeurons[layer]; neuron++)
            {
              self->weight[layer][neuron] = (nnNeuronData_t*)malloc(self->numNeurons[layer-1] * sizeof(self->weight[layer][neuron][0]));
              if(self->weight[layer][neuron] == NULL) return nnDestroy(self);          
            }
        }
    }
    
   self->activationFunction = (nnActivationFunction_t*)malloc(numLayers * sizeof(self->activationFunction[0])); 
   if(self->activationFunction == NULL) return nnDestroy(self);
   self->activationDerivative = (nnActivationDerivative_t*)malloc(numLayers * sizeof(self->activationDerivative[0]));
   if(self->activationDerivative == NULL) return nnDestroy(self);
   
   nnSetHiddenLayersActivationFunction(self, nnActivationFunctionTanh,    nnActivationDerivativeTanh);
   nnSetOutputLayerActivationFunction (self, nnActivationFunctionSigmoid, nnActivationDerivativeSigmoid);
   
   return self;
}

/***********************************************************************************/
NeuralNetwork* nnNew(int numLayers, ...)
{
  nnNeuronCount_t layer;
  nnNeuronCount_t numNeurons[numLayers];
  va_list args;
  NeuralNetwork* self;

  va_start(args, numLayers);
  for(layer=0; layer<numLayers; numNeurons[layer++] = va_arg(args, nnNeuronCount_t));
  va_end(args);
  
  self = nnAllocate(numLayers, numNeurons);
    if(self != NULL)
      {
        nnForgetTraining(self);
      }
  return self;
}

/***********************************************************************************/
nnNeuronCount_t nnNumNeuronsInLayer(NeuralNetwork* self, unsigned int layer)
{
  return (layer < self->numLayers) ? self->numNeurons[layer] : 0;
}

/***********************************************************************************/
nnNeuronCount_t nnNumInputNeurons(NeuralNetwork* self)
{
  return nnNumNeuronsInLayer(self, 0);
}

/***********************************************************************************/
nnNeuronCount_t nnNumOutputNeurons(NeuralNetwork* self)
{
  return nnNumNeuronsInLayer(self, nnNumLayers(self)-1);
}

/***********************************************************************************/
nnNeuronData_t* nnInputBuffer(NeuralNetwork* self, nnNeuronCount_t* numNeurons)
{
  if(numNeurons != NULL)
    *numNeurons = nnNumInputNeurons(self);
  return self->neuronOutput[0];
}

/***********************************************************************************/
nnNeuronData_t* nnOutputBuffer(NeuralNetwork* self, nnNeuronCount_t* numNeurons)
{
  if(numNeurons != NULL)
    *numNeurons = nnNumOutputNeurons(self);
  return self->neuronOutput[nnNumLayers(self)-1];
}

/***********************************************************************************/
void nnForgetTraining(NeuralNetwork* self)
{
  nnNeuronCount_t layer, neuron, input;

  srandom(time(NULL) + (unsigned)self);

  for(layer=1; layer<self->numLayers; layer++)
    {
      for(neuron=0; neuron<nnNumNeuronsInLayer(self, layer); neuron++)
        {
          self->restState[layer][neuron]   = 2 * (rand01() - 0.5);
          self->restState[layer][neuron]  *= 1 / sqrt(nnNumNeuronsInLayer(self, layer-1));
          for(input=0; input<nnNumNeuronsInLayer(self, layer-1); input++)
            {
              self->weight[layer][neuron][input]  = 2 * (rand01() - 0.5);
              self->weight[layer][neuron][input] *= 1 / sqrt(nnNumNeuronsInLayer(self, layer-1));
            }
        }
    }
}

/***********************************************************************************/
void nnCopyInputToInputBuffer(NeuralNetwork* self, nnNeuronData_t* input, nnNeuronCount_t numInputs)
{
  nnNeuronCount_t neuron;
  nnNeuronData_t* inputBuffer = nnInputBuffer(self, NULL);

  if(numInputs == self->numNeurons[0])
    for(neuron=0; neuron<numInputs; neuron++, *inputBuffer++ = *input++);
}

/***********************************************************************************/
void nnCalculateOutput(NeuralNetwork* self)
{
  nnNeuronCount_t layer, neuron, input;
  
  for(layer=1; layer<self->numLayers; layer++)
    {
      for(neuron=0; neuron<nnNumNeuronsInLayer(self, layer); neuron++)
        {
          self->neuronOutput[layer][neuron] = self->restState[layer][neuron];
          for(input=0; input<nnNumNeuronsInLayer(self, layer-1); input++)
            {
              self->neuronOutput[layer][neuron] += self->neuronOutput[layer-1][input] * self->weight[layer][neuron][input];
            }
          self->activationFunction[layer](&(self->neuronOutput[layer][neuron]));
        }
    }
}

/***********************************************************************************/
nnNeuronData_t* nnCalculateOutputForInput(NeuralNetwork* self, nnNeuronData_t* input, nnNeuronCount_t numInputs, nnNeuronCount_t* numOutputs)
{
  nnCopyInputToInputBuffer(self, input, numInputs);
  nnCalculateOutput(self);
  return nnOutputBuffer(self, numOutputs);
}

/***********************************************************************************/
void nnScrambleTraningBuffers(nnNeuronData_t** inputBuffers, nnNeuronData_t** targetOutputBuffers, int numDataSets)
{
  int dataSet;
  int swapIndex;
  nnNeuronData_t* extra;
  
  for(dataSet=0; dataSet<numDataSets; dataSet++)
    {
      swapIndex = random() % numDataSets;
      extra = inputBuffers[dataSet];
      inputBuffers[dataSet] = inputBuffers[swapIndex];
      inputBuffers[swapIndex] = extra;
      extra = targetOutputBuffers[dataSet];
      targetOutputBuffers[dataSet] = targetOutputBuffers[swapIndex];
      targetOutputBuffers[swapIndex] = extra;
    }
}

/***********************************************************************************/
nnNeuronData_t nnTrain(NeuralNetwork* self, nnNeuronData_t** inputBuffers, nnNeuronData_t** targetOutputBuffers, int numDataSets, 
             nnNeuronCount_t numInputNeurons, nnNeuronCount_t numOutputNeurons, 
             nnNeuronData_t targetError, int maxNumGenerations)
{
  int generation, dataSet;
  nnNeuronData_t errorRate;
  for(generation=0; generation<maxNumGenerations; generation++)
    {
      errorRate = 0;
      for(dataSet=0; dataSet<numDataSets; dataSet++)
        {
          nnCalculateOutputForInput(self, inputBuffers[dataSet], numInputNeurons, NULL);
          nnTrainOnce(self, targetOutputBuffers[dataSet], numOutputNeurons);
          errorRate += nnErrorRate(self);
        }
      errorRate /= (nnNeuronData_t)numDataSets;
      if(errorRate <= targetError)
        goto end;
      printf("error rate: %lf\n", errorRate);
      errorRate = 0;  
      nnAnneal(self, generation);
      nnScrambleTraningBuffers(inputBuffers, targetOutputBuffers, numDataSets); 
    }
    
  end:
  return errorRate;
}

/***********************************************************************************/
nnNeuronData_t nnErrorRate(NeuralNetwork* self)
{
  nnNeuronCount_t neuron;
  nnNeuronData_t  error = 0;
  nnNeuronCount_t numNeurons  = nnNumOutputNeurons(self);
  int             outputLayer = self->numLayers - 1;
  
  for(neuron=0; neuron<numNeurons; neuron++)
    error += self->error[outputLayer][neuron] * self->error[outputLayer][neuron];
  
  return error;
}

/***********************************************************************************/
nnNeuronCount_t nnIndexOfHighestOutputNeuron(NeuralNetwork* self)
{
  nnNeuronCount_t i;
  nnNeuronData_t  highestValue     =  0;
  nnNeuronCount_t highestIndex     =  0;
  nnNeuronCount_t numOutputNeurons;
  nnNeuronData_t* output           = nnOutputBuffer(self, &numOutputNeurons);
  
  for(i=0; i<numOutputNeurons; i++)
    {
      if(*output > highestValue)
        {
          highestValue = *output;
          highestIndex = i;
        }
      output++;
    }
  return highestIndex;
}

//not threadsafe (destroys output buffer then restores it)
/***********************************************************************************/
nnNeuronCount_t nnIndexOfRandomOutputNeuron(NeuralNetwork* self)
{
  nnNeuronCount_t i, highestIndex;  
  nnNeuronCount_t numOutputNeurons;
  nnNeuronData_t* output           = nnOutputBuffer(self, &numOutputNeurons);  
  nnNeuronData_t  sumOfOutputs     = 0;
  nnNeuronData_t  probability      = 0;
  
  for(i=0; i<numOutputNeurons; i++, sumOfOutputs += *output++);

  output = nnOutputBuffer(self, &numOutputNeurons);  
  for(i=0; i<numOutputNeurons; i++)
    {
      highestIndex  = nnIndexOfHighestOutputNeuron(self);
      probability  += output[highestIndex];
      if(rand01() < (probability / sumOfOutputs))
        break;
      else
        output[highestIndex] *= -1;
    }
    
  //restore buffer;
  output = nnOutputBuffer(self, &numOutputNeurons);
  for(i=0; i<numOutputNeurons; i++)
    {
      if(*output < 0)
        *output *= -1;
      output++;
    }
  
  return highestIndex;
}

/***********************************************************************************/
void nnTrainOnce(NeuralNetwork* self, nnNeuronData_t* targetOutput, int numOutputs)
{
  nnNeuronCount_t layer, neuron, input;
  
  if(numOutputs == nnNumOutputNeurons(self))
    {
      //output layer error
      layer=self->numLayers-1;
      for(neuron=0; neuron<nnNumOutputNeurons(self); neuron++)
        self->error[layer][neuron] = targetOutput[neuron] - self->neuronOutput[layer][neuron];
      //hidden layers error
      for(layer=self->numLayers-2; layer>0; layer--)
        for(neuron=0; neuron<nnNumNeuronsInLayer(self, layer); neuron++)
          {
            self->error[layer][neuron] = 0;
            for(input=0; input<nnNumNeuronsInLayer(self, layer+1); input++)
              //[layer+1][input][neuron], because it goes backwards!
              self->error[layer][neuron] += self->weight[layer+1][input][neuron] * self->error[layer+1][input];
          }
          
      //adjust weight and rest states
      for(layer=1; layer<self->numLayers; layer++)
        for(neuron=0; neuron<nnNumNeuronsInLayer(self, layer); neuron++)
          {
            self->restState[layer][neuron] += self->learningRate 
                                             * self->error[layer][neuron] 
                                             * self->activationDerivative[layer](self->restState[layer][neuron]) 
                                             / self->numNeurons[layer-1];
            for(input=0; input<nnNumNeuronsInLayer(self, layer-1); input++)
              self->weight[layer][neuron][input] += self->learningRate 
                                                 *  self->error[layer][neuron] 
                                                 *  self->neuronOutput[layer-1][input] 
                                                 *  self->activationDerivative[layer](self->weight[layer][neuron][input] 
                                                 *  self->neuronOutput[layer-1][input]);
          }
    }
}

/***********************************************************************************/
void nnSetActivationFunctionInLayer(NeuralNetwork* self, nnActivationFunction_t activation, nnActivationDerivative_t derivative, int layer)
{
  if( (layer > 0) && (layer < self->numLayers) )
    {
      self->activationFunction[layer]   = activation;
      self->activationDerivative[layer] = derivative;    
    }
}

/***********************************************************************************/
void nnSetHiddenLayersActivationFunction(NeuralNetwork* self, nnActivationFunction_t activation, nnActivationDerivative_t derivative)
{
  int layer;
  for(layer=1; layer <= self->numLayers-2; layer++)
    nnSetActivationFunctionInLayer(self, activation, derivative, layer);
}

/***********************************************************************************/
void nnSetOutputLayerActivationFunction(NeuralNetwork* self, nnActivationFunction_t activation, nnActivationDerivative_t derivative)
{
  int layer = self->numLayers-1;
  nnSetActivationFunctionInLayer(self, activation, derivative, layer);
}

/***********************************************************************************/
void nnAnneal(NeuralNetwork* self, int generation)
{
  self->annealingFunction(&(self->learningRate), &(self->annealingRate), generation);
}

/***********************************************************************************/
void nnSetAnnealingFunction(NeuralNetwork* self, nnAnnealingFunction_t function)
{
  self->annealingFunction = function;
}

#define NN_MAGIC_NUMBER "Brain"
#define NN_FILE_VERSION "1.0"

/***********************************************************************************/
int nnReadOrWriteDynamicArrays(NeuralNetwork* self, size_t(*readOrWrite)(void*, size_t, size_t, FILE*), FILE* file)
{
  int numBytes;
  nnNeuronCount_t neuron, layer;
  
  
  for(layer=0; layer<self->numLayers; layer++)
    {
      numBytes = self->numNeurons[layer] * sizeof(self->neuronOutput[0][0]);
      if( readOrWrite(self->neuronOutput[layer], 1, numBytes, file) != numBytes) return 0;
    }
  
  for(layer=1; layer<self->numLayers; layer++)
    {
      numBytes = self->numNeurons[layer] * sizeof(self->restState[0][0]);
      if( readOrWrite(self->restState[layer], 1, numBytes, file) != numBytes) return 0;
      numBytes = self->numNeurons[layer] * sizeof(self->error[0][0]);
      if( readOrWrite(self->error[layer], 1, numBytes, file) != numBytes) return 0;      
    }  
    
  for(layer=1; layer<(self->numLayers); layer++)
    {
      for(neuron=0; neuron<self->numNeurons[layer]; neuron++)
        {
          numBytes = self->numNeurons[layer-1] * sizeof(self->weight[0][0][0]);
          if( readOrWrite(self->weight[layer][neuron], 1, numBytes, file) != numBytes) return 0; 
        }
    }
  
  numBytes = sizeof(self->learningRate);
  if(readOrWrite(&(self->learningRate), 1, numBytes, file) != numBytes) return 0;
  
  numBytes = sizeof(self->annealingRate); 
  if( readOrWrite(&(self->annealingRate), 1, numBytes, file) != numBytes) return 0; 
  
  return 1;
}

/***********************************************************************************/
int nnSave(NeuralNetwork* self, char* filename)
{
  char* magicNumber = NN_MAGIC_NUMBER;
  char* version     = NN_FILE_VERSION;
  int numBytes, success = 0;
  FILE* file;
  
  if((file = fopen(filename, "w+")) != NULL)
    {
      numBytes = strlen(magicNumber);
      if(fwrite(magicNumber, 1, numBytes, file) == numBytes)
        {
          numBytes = strlen(version);
          if(fwrite(version, 1, numBytes, file) == numBytes)
            {
              numBytes = sizeof(self->numLayers);
              if(fwrite(&(self->numLayers), 1, numBytes, file) == numBytes)
                {
                  numBytes = self->numLayers * sizeof(self->numNeurons[0]);
                  if(fwrite(self->numNeurons, 1, numBytes, file) == numBytes)
                    {
                      success = nnReadOrWriteDynamicArrays(self, (size_t(*)(void*, size_t, size_t, FILE*))fwrite, file); 
                    }
                }
            }         
        }
      fclose(file);  
    }  
  return success;
}

/***********************************************************************************/
NeuralNetwork* nnOpen(char* filename)
{
  NeuralNetwork* self = NULL;
  char magicNumber[strlen(NN_MAGIC_NUMBER)+1];
  char version    [strlen(NN_FILE_VERSION)+1];
  int numBytes,    numLayers, success = 0;
  nnNeuronCount_t *numNeurons;
  FILE* file;
  
  if((file = fopen(filename, "r")) != NULL)
    {
      numBytes = strlen(NN_MAGIC_NUMBER);
      if(fread(magicNumber, 1, numBytes, file) == numBytes)
        {
          magicNumber[numBytes] =  '\0';
          if(strcmp(magicNumber, NN_MAGIC_NUMBER) == 0)
            {
              numBytes = strlen(NN_FILE_VERSION);
              if(fread(version, 1, numBytes, file) == numBytes)
                {
                  version[numBytes] =  '\0';
                  if(strcmp(version, NN_FILE_VERSION) == 0) 
                    {
                      numBytes = sizeof(numLayers);
                      if(fread(&numLayers, 1, numBytes, file) == numBytes)
                        {
                          numBytes = numLayers * sizeof(*numNeurons);
                          if((numNeurons = (nnNeuronCount_t*)malloc(numBytes)) != NULL)
                            {
                              if(fread(numNeurons, 1, numBytes, file) == numBytes)
                                {
                                  if((self = nnAllocate(numLayers, numNeurons)) != NULL)
                                    {
                                      success = nnReadOrWriteDynamicArrays(self, fread, file);
                                    }
                                }
                              free(numNeurons);                          
                            }
                        }
                    }               
                }           
            }          
        }
      fclose(file);
    }
  return success ? self : nnDestroy(self);
}

/***********************************************************************************/
NeuralNetwork* nnDestroy(NeuralNetwork* self)
{
  nnNeuronCount_t layer, neuron;
  if(self != NULL)
  {
    //restState
    if(self->restState != NULL)
      {
        for(layer=1; layer<self->numLayers; layer++) 
          {
            if(self->restState[layer] != NULL)
              free(self->restState[layer]);
          }
        free(self->restState);
      }
    //error
    if(self->error != NULL)
      {
        for(layer=1; layer<self->numLayers; layer++) 
          {
            if(self->error[layer] != NULL)
              free(self->error[layer]);
          }
        free(self->error);
      }    
    //neuronOutput
    if(self->neuronOutput != NULL)
      {
        for(layer=0; layer<self->numLayers; layer++) 
          {
            if(self->neuronOutput[layer] != NULL)
              free(self->neuronOutput[layer]);
          }
        free(self->neuronOutput);
      }   
    //weight
    if(self->weight != NULL)
      {
        for(layer=1; layer<self->numLayers; layer++) 
          {
            if(self->weight[layer] != NULL)
              {
                for(neuron=0; neuron<self->numNeurons[layer]; neuron++)
                  {
                    if(self->weight[layer][neuron] != NULL)
                      free(self->weight[layer][neuron]);
                  }
                free(self->weight[layer]);
              }
          }
        free(self->weight);
      }
    //activationFunction
    if(self->activationFunction != NULL)
      free(self->activationFunction);
    //activationDerivative
    if(self->activationDerivative != NULL)
      free(self->activationDerivative);
    //numNeurons
    if(self->numNeurons != NULL)
      free(self->numNeurons);
      
    free(self);
  }  
  return (NeuralNetwork*)NULL;
}

/***********************************************************************************/
void nnPrintOutputBuffer(NeuralNetwork* self)
{
  nnNeuronCount_t i;
  nnNeuronCount_t numNeurons;
  nnNeuronData_t* outputBuffer = nnOutputBuffer(self, &numNeurons);
 
  printf("output ");
  for(i=0; i<numNeurons; i++)
    printf(": %lf  ", *outputBuffer++);

  printf("\n\n");
}



