#ifndef __NEURAL_NETWORK__
#define __NEURAL_NETWORK__

#if defined(__cplusplus)
extern "C"{
#endif   //(__cplusplus)

/*!
 * @header NeuralNetwork
 * @abstract An ANSI C pseudoclass for manipulating neural networks
 * @unsorted
 */

/***********************************************************************************/
/*! 
 * @typedef nnNeuronCount_t 
 */
typedef unsigned int   nnNeuronCount_t;


/*! 
 * @typedef nnNeuronData_t
 *  used for neuron calculations<br />
 *  including neuron inputs, outputs, weights, errors, rest states, etc...
 */
typedef double         nnNeuronData_t;


/*! 
 * @typedef nnActivationFunction_t 
 * @abstract callback type for custom activation functions
 * @discussion a pointer to the sum of the weights times inputs will be passed 
 *  into the function, which should operate on that value "in place"
 */
typedef void           (*nnActivationFunction_t)  (nnNeuronData_t*);

/*! 
 * @typedef nnActivationDerivative_t
 * @abstract callback type for calculation the derivative of a custom activation functions
 * @discussion should return the derivative of the value passed in
 */
typedef nnNeuronData_t (*nnActivationDerivative_t)(nnNeuronData_t );

/*! 
 * @typedef nnAnnealingFunction_t 
 * @abstract callback type for custom annealing functions
 * @discussion a pointer to the network's learning rate and 
 *  annealing rate are passed in, and may be operated upon directly.
 *  The current generation is also passed, which starts at 0 for every call
 *  to nnTrain()
 */
typedef void (*nnAnnealingFunction_t)  (nnNeuronData_t* learningRate, nnNeuronData_t* annealingRate, nnNeuronCount_t generation);


/***********************************************************************************/
void           nnActivationFunctionSigmoid   (nnNeuronData_t* value);
nnNeuronData_t nnActivationDerivativeSigmoid (nnNeuronData_t  value);
void           nnActivationFunctionTanh      (nnNeuronData_t* value);
nnNeuronData_t nnActivationDerivativeTanh    (nnNeuronData_t  value);
void           nnActivationFunctionLinear    (nnNeuronData_t* value);
nnNeuronData_t nnActivationDerivativeLinear  (nnNeuronData_t  value);

/*!  @define NN_ACTIVATION_SIGMOID  */
#define NN_ACTIVATION_SIGMOID nnActivationFunctionSigmoid, nnActivationDerivativeSigmoid
/*!  @define NN_ACTIVATION_TANH     */
#define NN_ACTIVATION_TANH    nnActivationFunctionTanh,    nnActivationDerivativeTanh
/*!  @define NN_ACTIVATION_LINEAR   */
#define NN_ACTIVATION_LINEAR  nnActivationFunctionLinear,  nnActivationDerivativeLinear


/***********************************************************************************/
//typedef enum 
//{
//  NN_ACTIVATION_FUNCTION_SIGMOID,
//}nnBuiltinActivationFunction_t;


/***********************************************************************************/
/*!
 * @class NeuralNetwork
 *  the opaque Neural Network object type.
 */
typedef struct OpaqueNeuralNetworkStruct
{                                 ;
  int                       numLayers           ; //
  nnNeuronCount_t*          numNeurons          ; //[layer]
  nnNeuronData_t**          neuronOutput        ; //[layer][neuron]
  nnNeuronData_t**          restState           ; //[layer][neuron]
  nnNeuronData_t**          error               ; //[layer][neuron]
  nnNeuronData_t***         weight              ; //[thisLayer][thisNeuron][inputNeuron]
                                                  // attached to neuron's input (not output)
  nnActivationFunction_t*   activationFunction  ; //[layer]
  nnActivationDerivative_t* activationDerivative; //[layer]
  nnAnnealingFunction_t     annealingFunction   ; //
  nnNeuronData_t            learningRate        ; //
  nnNeuronData_t            annealingRate       ; //
}NeuralNetwork;

/*!
 * @functiongroup Constructors / Destructors
 */
 
/***********************************************************************************/
/*!
 * @method nnNew 
 *  create and initialize a NeuralNetwork object using variadic arguments
 *
 * @param numLayers
 *  the number of layers in the network, including the input, 
 *  hidden and output layers
 *
 * @param ...
 *  integers representing the number of neurons in each layer,
 *  the first number corresponds to the input layer, and 
 *  the last to the output layer
 *
 * @result
 *  returns the NeuralNetwork object, or NULL if it could not
 *  be created
 */
NeuralNetwork* nnNew(int numLayers, ...);

/***********************************************************************************/
/*!
 * @method nnNewA
 *  create and initialize a NeuralNetwork object using array arguments
 *
 * @param numLayers
 *  the number of layers in the network, including the input, 
 *  hidden and output layers
 *
 * @param numNeuronsInLayer
 *  An array of length numLayers containg
 *  integers representing the number of neurons in each layer,
 *  the first number corresponds to the input layer, and 
 *  the last to the output layer
 *
 * @result
 *  returns the NeuralNetwork object, or NULL if it could not
 *  be created
 */
NeuralNetwork* nnNewA(int numLayers, nnNeuronCount_t numNeuronsInLayer[]);

/***********************************************************************************/
/*!
 * @method nnDestroy
 *  destroy the NeuralNetwork object and free all of
 *  its resources
 *
 * @param self 
 *  the NeuralNetwork object to operate upon 
 * 
 * @result
 *  NULL<br />
 *  use like:<br />
 *  network = nnDestroy(network);<br />
 *  to prevent runtime segmentation faults;<br />
 */
NeuralNetwork* nnDestroy(NeuralNetwork* self);


/*!
 * @functiongroup Files
 */
 
/***********************************************************************************/
/*!
 * @method nnOpen
 *  open a previously saved NeuralNetwork object
 *
 * @param filename
 *  the path of the saved object 
 * 
 * @result
 *  the NeuralNetwork object or NULL if an error occurred
 */
NeuralNetwork* nnOpen(char* filename);

/***********************************************************************************/
/*!
 * @method nnSave
 *  Save a NeuralNetwork object to disk. This does not create a portable file type, 
 *  as the binary structrue of the file will depend upon the system's byte order
 *  and size of various data types. This method is only intended to accomodate 
 *  individual networks running on individual robots
 *
 * @param self 
 *  the NeuralNetwork object to save
 *
 * @param filename
 *  the path of the saved object 
 * 
 * @result
 *  1 on success, otherwise 0;
 */
int nnSave(NeuralNetwork* self, char* filename);

 
/*!
 * @functiongroup Accessors
 */

/***********************************************************************************/
/*!
 * @method nnNumLayers
 *  get the number of layers in the network
 *
 * @param self 
 *  the NeuralNetwork object to operate upon
 *
 * @result
 *  the number of layers in the network including the input
 *  and output layers
 */
int nnNumLayers(NeuralNetwork* self);
#define nnNumLayers(self)((self)->numLayers)


/***********************************************************************************/
/*!
 * @method nnNumNeuronsInLayer
 *  get the number of neurons in the specified layer 
 *
 * @param self 
 *  the NeuralNetwork object to operate upon
 *
 * @param layer
 *  the layer to query. 0 is the input layer, 
 *  nnNumLayers(self)-1 is the output layer
 *
 * @result 
 *  the number of neurons in the specified layer
 */
nnNeuronCount_t nnNumNeuronsInLayer(NeuralNetwork* self, unsigned int layer);


/***********************************************************************************/
/*!
 * @method nnNumInputNeurons
 *  get the number of input neurons<br /> 
 *  this is a convenience method for<br />
 *  nnNumNeuronsInLayer(network, 0); 
 *
 * @param self 
 *  the NeuralNetwork object to operate upon
 *
 * @result 
 *  the number of neurons in the specified layer
 */
nnNeuronCount_t nnNumInputNeurons(NeuralNetwork* self);


/***********************************************************************************/
/*!
 * @method nnNumOutputNeurons
 *  get the number of output neurons<br /> 
 *  this is a convenience method for<br />
 *  nnNumNeuronsInLayer(network, nnNumLayers(network)-1); 
 *
 * @param self 
 *  the NeuralNetwork object to operate upon
 *
 * @result 
 *  the number of neurons in the specified layer
 */
nnNeuronCount_t nnNumOutputNeurons(NeuralNetwork* self);


/***********************************************************************************/
/*!
 * @method nnLearningRate
 */
nnNeuronData_t nnLearningRate(NeuralNetwork* self);
#define nnLearningRate(self)((self)->learningRate)

/*!
 * @method nnSetLearningRate
 */
void nnSetLearningRate(NeuralNetwork* self, nnNeuronData_t rate);
#define nnSetLearningRate(self, rate)((self)->learningRate = (rate))

/*!
 * @method nnAnnealingRate
 */
nnNeuronData_t nnAnnealingRate(NeuralNetwork* self);
#define nnAnnealingRate(self)((self)->annealingRate)

/*!
 * @method nnSetAnnealingRate
 */
void nnSetAnnealingRate(NeuralNetwork* self, nnNeuronData_t rate);
#define nnSetAnnealingRate(self, rate)((self)->annealingRate = (rate))


/***********************************************************************************/
/*!
 * @method nnSetAnnealingFunction
 *  customize the network's annealing function, which will be called each generation
 *  of nnTrain(); The default annealing function does nothing for 15 generations and 
 *  then just multiplies the learning rate by the annealing coefficient during each
 *  successive generation   
 *
 * @param self 
 *  the NeuralNetwork object to operate upon
 *
 * @param function
 *  the new annealing function
 */
void nnSetAnnealingFunction(NeuralNetwork* self, nnAnnealingFunction_t function);


/***********************************************************************************/
/*!
 * @method nnAnneal
 *  Calls the network's annealing function to manually anneal the network. 
 *  This is normally done automatically by nnTrain(). The default annealing
 *  function does nothing for 15 generations and then just multiplies the learning
 *  rate by the annealing coefficient during each successive generation. 
 *  This behaviour can be changed with 
 *  nnSetAnnealingFunction();
 * 
 * @param self 
 *  the NeuralNetwork object to operate upon
 *
 * @param generation 
 *  the number of previously elapsed generations of training, starting at 0
 */
void nnAnneal(NeuralNetwork* self, int generation);


/***********************************************************************************/
/*!
 * @method nnSetActivationFunctionInLayer
 *  customize neuron activation functions. By default, a tanh function is used in 
 *  in the hidden layers, and a sigmoidal in the output layer. 
 *
 *  <br /><br />the arguments 'activation' and 'derivative' may be replaced by
 *  a single macro that expands to the names of the built-in activation functions.
 *  Valid macros are:
 *  1. NN_ACTIVATION_SIGMOID
 *  2. NN_ACTIVATION_TANH   
 *  3. NN_ACTIVATION_LINEAR 
 *
 *  eg: nnSetActivationFunctionInLayer(self, NN_ACTIVATION_SIGMOID, 1);
 *
 * @param self 
 *  the NeuralNetwork object to operate upon
 *
 * @param activation
 *  the activationFunction
 *
 * @param derivative 
 *  a function that computes the derivative of the activation function;
 *
 * @param layer
 *  the layer whose activation is to be set. 1 is the first hidden layer (inputs
 *  have no activation function), and nnNumLayers(self)-1 is the output layer.
 */
void nnSetActivationFunctionInLayer(NeuralNetwork* self, nnActivationFunction_t activation, nnActivationDerivative_t derivative, int layer);

/***********************************************************************************/
/*!
 * @method nnSetHiddenLayersActivationFunction
 *  a convenience method that calls nnSetActivationFunctionInLayer() for each 
 *  hidden layer. See that method for usage details 
 */
void nnSetHiddenLayersActivationFunction(NeuralNetwork* self, nnActivationFunction_t activation, nnActivationDerivative_t derivative);

/***********************************************************************************/
/*!
 * @method nnSetOutputLayerActivationFunction
 *  a convenience method that calls nnSetActivationFunctionInLayer() for the 
 *  output layer. See that method for usage details
 */
void nnSetOutputLayerActivationFunction(NeuralNetwork* self, nnActivationFunction_t activation, nnActivationDerivative_t derivative);

/***********************************************************************************/
/*!
 * @method nnInputBuffer
 *  get the network's input buffer. Fill this buffer before calling 
 *  nnCalculateOutput()
 *
 * @param self 
 *  the NeuralNetwork object to operate upon 
 *
 * @param numNeurons
 *  on return will contain the length of the returned buffer;
 *  pass NULL if you don't care.
 *
 * @result 
 *  a pointer to the buffer
 */
nnNeuronData_t* nnInputBuffer(NeuralNetwork* self, nnNeuronCount_t* numNeurons);


/***********************************************************************************/
/*!
 * @method nnOutputBuffer
 *  provides direct access to the output of the output-layer's neurons
 *
 * @param self 
 *  the NeuralNetwork object to operate upon 
 *
 * @param numNeurons
 *  on return will contain the length of the returned buffer;
 *  pass NULL if you don't care.
 *
 * @result 
 *  a pointer to the buffer
 */
nnNeuronData_t* nnOutputBuffer(NeuralNetwork* self, nnNeuronCount_t* numNeurons);



/*!
 * @functiongroup Training
 */

/***********************************************************************************/
/*!
 * @method nnTrainOnce
 *  this method compares the network's actual output to the target output,
 *  back-propigates errors and adjusts weights and rest-states accordingly. 
 *  It does not first calculate the network's actual output. Do that with<br />
 *  nnCalculateOutput(self);
 * 
 * @param self 
 *  the NeuralNetwork object to operate upon
 *
 * @param targetOutput 
 *  a buffer containing the network's target output
 *
 * @param numOutputs
 *  the size of 'targetOutput', which must match the number of output neurons in the network
 */
void nnTrainOnce(NeuralNetwork* self, nnNeuronData_t* targetOutput, int numOutputs);


/***********************************************************************************/
/*!
 * @method nnTrain
 *  a convenience method that calculates the output for each of a set of input
 *  buffers, calls nnTrainOnce() with each of the corresponding target output 
 *  buffers, and repeats over many generations.
 *  Each generation the annealing function is called and the order of the training
 *  set is scrambled to aviod oscillating error-rate loops.
 *  This function will return when the target error rate is reached, or when the 
 *  specified maximum number of generations have been exhausted, whichever comes
 *  first.
 *  
 * @param self 
 *  the NeuralNetwork object to operate upon
 * @param inputBuffers 
 *  an array of input buffers for training.
 * @param targetOutputBuffers 
 *  an array of buffers that correspond to the target output for the input buffers
 * @param numDataSets
 *  the number of input buffers, which must be the same as the number of target 
 *  output buffers
 * @param numInputNeurons
 *  the number of objects in each input buffer, which must match the number of input 
 *  neurons in the network.
 * @param numOutputNeurons
 *  the number of objects in each targetOutput buffer, which must match the number 
 *  of output neurons in the network.
 * @param targetError
 *  the error rate at which this method will return
 * @param maxNumGenerations
 *  the maximum number of generations to train if the target error rate is
 *  not reached, and the actual error rate does not converge;
 *
 * @result
 *  returns the average error rate over the last generation of training
 */
nnNeuronData_t nnTrain(NeuralNetwork* self, nnNeuronData_t** inputBuffers, nnNeuronData_t** targetOutputBuffers, int numDataSets, 
             nnNeuronCount_t numInputNeurons, nnNeuronCount_t numOutputNeurons, 
             nnNeuronData_t targetError, int maxNumGenerations);
             

/***********************************************************************************/
/*!
 * @method nnForgetTraining
 *  sets the weights and rest states to random numbers between -n and n, where
 *  n is the 1 over the square root of the number of inputs to that neuron
 *
 * @param self 
 *  the NeuralNetwork object to operate upon 
 */
void nnForgetTraining(NeuralNetwork* self);


/***********************************************************************************/
/*!
 * @method nnErrorRate
 *  returns the average output-layer error rate
 * 
 * @param self 
 *  the NeuralNetwork object to operate upon 
 * 
 * @result
 *  the error rate
 */
nnNeuronData_t nnErrorRate(NeuralNetwork* self);

             
/*!
 * @functiongroup Cogitating
 */

/***********************************************************************************/
/*!
 * @method nnCalculateOutput
 *  calculates the network's output.
 *  Get the input buffer with 
 *  nnInputBuffer() 
 *  and fill it before calling this, or use nnCalculateOutputForInput() instead.
 *
 * @param self 
 *  the NeuralNetwork object to operate upon
 */
void nnCalculateOutput(NeuralNetwork* self);


/***********************************************************************************/
/*!
 * @method nnCalculateOutputForInput
 *  a convenience method that copies the specified input values into the network's
 *  input buffer, and then calls nnCalculateOutput();
 * 
 * @param self 
 *  the NeuralNetwork object to operate upon 
 * @param input
 *  the input for which to calculate the output 
 * @param numInputs
 *  the number of objects in 'input', which must match the number of input 
 *  neurons in the network.
 * @param numOutputs
 *  on return will contain the length of the returned buffer;
 *  pass NULL if you don't care.
 * 
 * @result
 *  the network's output buffer
 */
nnNeuronData_t* nnCalculateOutputForInput(NeuralNetwork* self, nnNeuronData_t* input, nnNeuronCount_t numInputs, nnNeuronCount_t* numOutputs);


/***********************************************************************************/
/*!
 * @method nnIndexOfHighestOutputNeuron
 *  returns the index of the most active output neuron
 * 
 * @param self 
 *  the NeuralNetwork object to operate upon 
 * 
 * @result
 *  the neuron's index
 */
nnNeuronCount_t nnIndexOfHighestOutputNeuron(NeuralNetwork* self);


/***********************************************************************************/
/*!
 * @method nnIndexOfRandomOutputNeuron
 *  returns the index of a random output neuron. This method interprets the activity 
 *  of each neuron as a weighted probability, so that it is most likely to
 *  return the index of the most active neuron, depending upon how much more active
 *  it is than the other neurons, and so forth. This method destroys the output 
 *  buffer and then attempts to restore it, which will fail with custom activation
 *  functions that are not normalized between 0 and 1.
 * 
 * @param self 
 *  the NeuralNetwork object to operate upon 
 * 
 * @result
 *  the index of the chosen neuron
 */
nnNeuronCount_t nnIndexOfRandomOutputNeuron(NeuralNetwork* self);


/*!
 * @functiongroup Misc
 */
 
 /***********************************************************************************/
/*!
 * @method nnPrintOutputBuffer
 *  prints the output of each output-layer neuron to stdout
 */
void nnPrintOutputBuffer(NeuralNetwork* self);

#if defined(__cplusplus)
}
#endif   //(__cplusplus)

#endif// __NEURAL_NETWORK__

