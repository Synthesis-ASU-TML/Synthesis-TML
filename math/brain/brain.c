/**
	@file
	brain - a brain object	
*/

#include "ext.h"
#include "ext_obex.h"
#include "NeuralNetwork.h"

/*------------------------------------------------------------*/
typedef struct _brain 
{
  t_object       ob; // must be first
	NeuralNetwork* nn;
  void*          outlet_0;
  t_symbol*      filename;
} t_brain;

/*------------------------------------------------------------*/
void* brain_new                                  (t_symbol *s, long argc, t_atom *argv);
void  brain_free                                 (t_brain *x);
void  brain_assist                               (t_brain *x, void *b, long m, long a, char *s);

void  brain_int                                  (t_brain *x, long n);
void  brain_float                                (t_brain *x, double f);
void  brain_anything                             (t_brain *x, t_symbol *s, long ac, t_atom *av);
void  brain_bang                                 (t_brain *x);
void  brain_identify                             (t_brain *x);
void  brain_dblclick                             (t_brain *x);

void  brain_open                                 (t_brain *x, t_symbol* filename);
void  brain_save                                 (t_brain *x);
void  brain_save_as                              (t_brain *x, t_symbol* filename);
void  brain_num_layers                           (t_brain *x);
void  brain_num_neurons_in_layer                 (t_brain *x, long layer);
void  brain_num_input_neurons                    (t_brain *x);
void  brain_num_output_neurons                   (t_brain *x);
void  brain_learning_rate                        (t_brain *x);
void  brain_set_learning_rate                    (t_brain *x, double rate);
void  brain_annealing_rate                       (t_brain *x);
void  brain_set_annealing_rate                   (t_brain *x, double rate);
void  brain_anneal                               (t_brain *x, long generation);
void  brain_set_activation_function_in_layer     (t_brain *x, long funct, long layer);
void  brain_set_hidden_layers_activation_function(t_brain *x, long funct);
void  brain_set_output_layer_activation_function (t_brain *x, long funct);
void  brain_set_input_buffer                     (t_brain *x, t_symbol *s, long argc, t_atom *argv);
void  brain_get_output_buffer                    (t_brain *x);
void  brain_train_once                           (t_brain *x, t_symbol *s, long argc, t_atom *argv);
//void  brain_train                                (t_brain *x, double** inputBuffers, double** targetOutputBuffers, double numDataSets, 
//                                                 long numInputNeurons, long numOutputNeurons, double targetError, long maxNumGenerations);
void  brain_forget_training                      (t_brain *x);
void  brain_error_rate                           (t_brain *x);
void  brain_calculate_output                     (t_brain *x);
void  brain_calculate_output_for_input           (t_brain *x, t_symbol *s, long argc, t_atom *argv);
void  brain_index_of_highest_output_neuron       (t_brain *x);
void  brain_index_of_random_output_neuron        (t_brain *x);

/*------------------------------------------------------------*/
void *brain_class;

/*------------------------------------------------------------*/
int main(void)
{	
	t_class *c;
	
	c = class_new("brain", (method)brain_new, (method)brain_free, (long)sizeof(t_brain), 0L /* leave NULL!! */, A_GIMME, 0);
	
  class_addmethod(c, (method)brain_bang                                 , "bang"                                 ,          0);
  class_addmethod(c, (method)brain_int                                  , "int"                                  , A_LONG , 0);  
  class_addmethod(c, (method)brain_float                                , "float"                                , A_FLOAT, 0);  
  class_addmethod(c, (method)brain_anything                             , "anything"                             , A_GIMME, 0);  
  class_addmethod(c, (method)brain_identify                             , "identify"                                      , 0);
  CLASS_METHOD_ATTR_PARSE(c, "identify", "undocumented", gensym("long"), 0, "1");


  class_addmethod(c, (method)brain_assist                               , "assist"                               , A_CANT , 0);  
  class_addmethod(c, (method)brain_dblclick                             , "dblclick"                             , A_CANT , 0);
	
  class_addmethod(c, (method)brain_open                                 , "open"                                 , A_SYM  , 0);
  class_addmethod(c, (method)brain_save                                 , "save"                                 ,          0);
  class_addmethod(c, (method)brain_save_as                              , "save_as"                              , A_SYM  , 0);
  class_addmethod(c, (method)brain_num_layers                           , "num_layers"                           ,          0);
  class_addmethod(c, (method)brain_num_neurons_in_layer                 , "num_neurons_in_layer"                 , A_LONG , 0);
  class_addmethod(c, (method)brain_num_input_neurons                    , "num_input_neurons"                    ,          0);
  class_addmethod(c, (method)brain_num_output_neurons                   , "num_output_neurons"                   ,          0);
  class_addmethod(c, (method)brain_learning_rate                        , "learning_rate"                        ,          0);
  class_addmethod(c, (method)brain_set_learning_rate                    , "set_learning_rate"                    , A_FLOAT, 0);
  class_addmethod(c, (method)brain_annealing_rate                       , "annealing_rate"                       ,          0);
  class_addmethod(c, (method)brain_set_annealing_rate                   , "set_annealing_rate"                   , A_FLOAT, 0);
  class_addmethod(c, (method)brain_anneal                               , "anneal"                               ,          0);
  class_addmethod(c, (method)brain_set_activation_function_in_layer     , "set_activation_function_in_layer"     , A_LONG , A_LONG, 0);
  class_addmethod(c, (method)brain_set_hidden_layers_activation_function, "set_hidden_layers_activation_function", A_LONG , 0);
  class_addmethod(c, (method)brain_set_output_layer_activation_function , "set_output_layer_activation_function" , A_LONG , 0);
  class_addmethod(c, (method)brain_set_input_buffer                     , "set_input_buffer"                     , A_GIMME, 0);
  class_addmethod(c, (method)brain_get_output_buffer                    , "get_output_buffer"                    ,          0);
  class_addmethod(c, (method)brain_train_once                           , "train_once"                           , A_GIMME, 0);
  //class_addmethod(c, (method)brain_train                              , "train"                                , A_LONG , 0);
  class_addmethod(c, (method)brain_forget_training                      , "forget_training"                      ,          0);
  class_addmethod(c, (method)brain_error_rate                           , "error_rate"                           ,          0);
  class_addmethod(c, (method)brain_calculate_output                     , "calculate_output"                     ,          0);
  class_addmethod(c, (method)brain_calculate_output_for_input           , "calculate_output_for_input"           , A_GIMME, 0);
  class_addmethod(c, (method)brain_index_of_highest_output_neuron       , "index_of_highest_output_neuron"       ,          0);
  class_addmethod(c, (method)brain_index_of_random_output_neuron        , "index_of_random_output_neuron"        ,          0);
	
	class_register(CLASS_BOX, c);
	brain_class = c;

	return 0;
}

/*------------------------------------------------------------*/
void *brain_new(t_symbol *s, long argc, t_atom *argv)
{
	t_brain *x = NULL;
  const int min_num_layers = 2;
  const int max_num_layers = 4;
  const char* error_message = "Invalid Arguments. Must pass a valid filename \n"
                               "and / or the integer number number of layers \n" 
                               "(including input, output and hidden i.e. \n"
                               "2, 3, or 4), and the integer number of \n"
                               "neurons in each layer";
    
	if ((x = (t_brain *)object_alloc(brain_class)) != NULL) 
    {
      x->nn = NULL;
      x->filename = NULL;
      
      if(argc < 1) goto bail;    //no arguments were given and we need at least one
      if(argv->a_type == A_SYM)  //first argument was filename
        {
          t_symbol* filename = atom_getsym(argv);
          brain_open(x, filename);
          x->filename = gensym(filename->s_name);
          argc--; argv++;
        }
      
      if(x->nn == NULL)          //either opening filename failed or no filename was given
        {
          if (argc < 1)          //filename was given and failed but no more arguments given
            goto bail;
        
          if (argv->a_type != A_LONG) //expected integer number of layers but got a sym or float
            goto bail;
        
          long num_layers = atom_getlong(argv);
          argv++, argc--;
          if((num_layers < min_num_layers) || (num_layers > max_num_layers) || (num_layers != argc))
            goto bail; //the number of layers given as an argument was wrong

          nnNeuronCount_t  num_neurons[num_layers];
          nnNeuronCount_t* n = num_neurons;
          while (argc)
            {
              if(argv->a_type != A_LONG) //expected the integer number of neurons for a layer but got float or sym
                goto bail;
            
              *n = atom_getlong(argv);
              if(*n < 1)
                goto bail;               //there cant be less than one neuron in a layer
              ++n;

              argc--; argv++;
            }

          x->nn = nnNewA(num_layers, num_neurons);
          if(x->nn == NULL) goto bail;  //stack overflow
        }
      
      x->outlet_0 = outlet_new(x, NULL);
      if(x->outlet_0 == NULL)       //could not make outlet
        goto bail;
    }
    
	return (x);
  
  bail:
    object_post((t_object *)x, error_message);
    brain_free(x);
    return NULL;
}

/*------------------------------------------------------------*/
void brain_free(t_brain *x)
{
	nnDestroy(x->nn);
}

/*------------------------------------------------------------*/
void brain_assist(t_brain *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_INLET) { //inlet
		sprintf(s, "Inlet %ld: messages in", a);
	} 
	else {	// outlet
		sprintf(s, "Outlet %ld: messages out", a); 			
	}
}

/*------------------------------------------------------------*/
void brain_dblclick(t_brain *x)
{

}

/*------------------------------------------------------------*/
void brain_int(t_brain *x, long n)
{

}

/*------------------------------------------------------------*/
void brain_float(t_brain *x, double f)
{

}

/*------------------------------------------------------------*/
void brain_anything(t_brain *x, t_symbol *s, long ac, t_atom *av)
{

}

/*------------------------------------------------------------*/
void brain_bang(t_brain *x)
{

}

/*------------------------------------------------------------*/
void brain_identify(t_brain *x)
{
	object_post((t_object *)x, "My name is brain. I am your brain");
}

/*------------------------------------------------------------*/
void brain_outlet_0(t_brain *x, const char* message_name, int argc, t_atom* argv)
{
  outlet_anything(x->outlet_0, gensym(message_name), argc, argv);
}

/*------------------------------------------------------------*/
void brain_outlet_0_i(t_brain *x, const char* message_name, int i)
{
  int argc = 1;
  t_atom argv[argc];
  atom_setlong(argv, i);
  brain_outlet_0(x, message_name, argc, argv);
}

/*------------------------------------------------------------*/
void brain_outlet_0_f(t_brain *x, const char* message_name, double f)
{
  int argc = 1;
  t_atom argv[argc];
  atom_setfloat(argv, f);
  brain_outlet_0(x, message_name, argc, argv);
}

/*------------------------------------------------------------*/
void brain_open(t_brain *x, t_symbol* filename)
{
  NeuralNetwork* new_nn = nnOpen(filename->s_name);
  if(new_nn != NULL)
    {
      if(x->nn != NULL)
        {
          brain_save(x);
          x->nn = nnDestroy(x->nn);
        }
      x->nn = new_nn;
      
      //if(x->filename != NULL)
        //freesym(x->filename);
        
      x->filename = gensym(filename->s_name);
    }
  else
    object_post((t_object *)x, "Failed to open %s\n", filename->s_name);
}

/*------------------------------------------------------------*/
void brain_save_as(t_brain *x, t_symbol* filename)
{
  x->filename = gensym(filename->s_name);
  brain_save(x);
}

/*------------------------------------------------------------*/
void brain_save(t_brain *x)
{
  if(x->filename != NULL)
    if (nnSave(x->nn, x->filename->s_name) == 0)
      object_post((t_object *)x, "Failed to save %s\n", x->filename->s_name);
}

/*------------------------------------------------------------*/
void brain_num_layers(t_brain *x)
{
  int result = nnNumLayers(x->nn);
  brain_outlet_0_i(x, "num_layers", result);
  
}

/*------------------------------------------------------------*/
void brain_num_neurons_in_layer(t_brain *x, long layer)
{
  nnNeuronCount_t result = nnNumNeuronsInLayer(x->nn, layer);
  brain_outlet_0_i(x, "num_neurons_in_layer", result);
}

/*------------------------------------------------------------*/
void brain_num_input_neurons(t_brain *x)
{
  nnNeuronCount_t result = nnNumInputNeurons(x->nn);
  brain_outlet_0_i(x, "num_input_neurons", result);
}

/*------------------------------------------------------------*/
void brain_num_output_neurons(t_brain *x)
{
  nnNeuronCount_t result = nnNumOutputNeurons(x->nn);
  brain_outlet_0_i(x, "num_output_neurons", result);
}

/*------------------------------------------------------------*/
void brain_learning_rate(t_brain *x)
{
  nnNeuronData_t result = nnLearningRate(x->nn);
  brain_outlet_0_f(x, "learning_rate", result);
}

/*------------------------------------------------------------*/
void brain_set_learning_rate(t_brain *x, double rate)
{
  nnSetLearningRate(x->nn, rate);
}

/*------------------------------------------------------------*/
void brain_annealing_rate(t_brain *x)
{
  nnNeuronData_t result = nnAnnealingRate(x->nn);
  brain_outlet_0_f(x, "annealing_rate", result);
}

/*------------------------------------------------------------*/
void brain_set_annealing_rate(t_brain *x, double rate)
{
  nnSetAnnealingRate(x->nn, rate);
}

/*------------------------------------------------------------*/
/*
void brain_set_annealing_function(t_brain *x, ??????)
{
  void nnSetAnnealingFunction(NeuralNetwork* self, nnAnnealingFunction_t function);
}
*/

/*------------------------------------------------------------*/
void brain_anneal(t_brain *x, long generation)
{
  nnAnneal(x->nn, generation);
}

/*------------------------------------------------------------*/
void brain_set_activation_function_in_layer(t_brain *x, long funct, long layer)
{
  switch(funct)
    {
      case 0:
        nnSetActivationFunctionInLayer(x->nn, NN_ACTIVATION_SIGMOID, layer);
        break;
      case 1:
        nnSetActivationFunctionInLayer(x->nn, NN_ACTIVATION_TANH   , layer);
        break;
      case 2:
        nnSetActivationFunctionInLayer(x->nn, NN_ACTIVATION_LINEAR , layer);
        break;
        
      default: break;
    }
}

/*------------------------------------------------------------*/
void brain_set_hidden_layers_activation_function(t_brain *x, long funct)
{
  switch(funct)
    {
      case 0:
        nnSetHiddenLayersActivationFunction(x->nn, NN_ACTIVATION_SIGMOID);
        break;
      case 1:
        nnSetHiddenLayersActivationFunction(x->nn, NN_ACTIVATION_TANH   );
        break;
      case 2:
        nnSetHiddenLayersActivationFunction(x->nn, NN_ACTIVATION_LINEAR );
        break;
        
      default: break;
    }
}

/*------------------------------------------------------------*/
void brain_set_output_layer_activation_function(t_brain *x, long funct)
{
  switch(funct)
    {
      case 0:
        nnSetOutputLayerActivationFunction(x->nn, NN_ACTIVATION_SIGMOID);
        break;
      case 1:
        nnSetOutputLayerActivationFunction(x->nn, NN_ACTIVATION_TANH   );
        break;
      case 2:
        nnSetOutputLayerActivationFunction(x->nn, NN_ACTIVATION_LINEAR );
        break;
        
      default: break;
    }
}

/*------------------------------------------------------------*/
bool brain_fill_buffer_from_gimme(t_brain *x, long argc, t_atom *argv, nnNeuronData_t* buffer, nnNeuronCount_t buffer_size)
{
  const char* error = "Wrong Number or type of Inputs or Outputs\n";
  bool success = true;

  if(buffer_size == argc)
    {
      while(buffer_size-- > 0)
        {
          switch(atom_gettype(argv))
            {
              case A_LONG:
                *buffer = atom_getlong(argv);
                break;

              case A_FLOAT:
                *buffer = atom_getfloat(argv);
                break;
                
              default:
                  success = false;
                break;
            }
          argv++; buffer++;
        }
    }
  else success = false;
  
  if(!success)
    object_post((t_object *)x, error);  
  
  return success;
}

/*------------------------------------------------------------*/
void brain_set_input_buffer(t_brain *x, t_symbol *s, long argc, t_atom *argv)
{
  nnNeuronCount_t n;
  nnNeuronData_t* b = nnInputBuffer(x->nn, &n);
  brain_fill_buffer_from_gimme(x, argc, argv, b, n);
}

/*------------------------------------------------------------*/
void brain_get_output_buffer(t_brain *x)
{
  nnNeuronCount_t n;
  nnNeuronData_t* b = nnOutputBuffer(x->nn, &n);
  int argc = n;
  t_atom  argv[argc];
  t_atom* a = argv;
  
  while(n-- > 0)
    atom_setfloat(a++, *b++);

  brain_outlet_0(x, "output_buffer", argc, argv); 
}

/*------------------------------------------------------------*/
void brain_train_once(t_brain *x, t_symbol *s, long argc, t_atom *argv)
{
  nnNeuronCount_t n = nnNumOutputNeurons(x->nn);
  nnNeuronData_t target_output[n];
  bool success = brain_fill_buffer_from_gimme(x, argc, argv, target_output, n);
  if(success) nnTrainOnce(x->nn, target_output, n);
}

/*------------------------------------------------------------*/

/*
void brain_train(t_brain *x, double** inputBuffers, double** targetOutputBuffers, long numDataSets, 
                 long numInputNeurons, long numOutputNeurons, double targetError, long maxNumGenerations)
{
  nnNeuronData_t result = nnTrain(x->nn, inputBuffers, targetOutputBuffers, numDataSets, numInputNeurons, numOutputNeurons, targetError, maxNumGenerations);
}
*/

/*------------------------------------------------------------*/
void brain_forget_training(t_brain *x)
{
  nnForgetTraining(x->nn);
}

/*------------------------------------------------------------*/
void brain_error_rate(t_brain *x)
{
  nnNeuronData_t result = nnErrorRate(x->nn);
  brain_outlet_0_i(x, "error_rate", result);
}

/*------------------------------------------------------------*/
void brain_calculate_output(t_brain *x)
{
  nnCalculateOutput(x->nn);
  brain_get_output_buffer(x);
}

/*------------------------------------------------------------*/
void brain_calculate_output_for_input(t_brain *x, t_symbol *s, long argc, t_atom *argv)
{
  nnNeuronCount_t n;
  nnNeuronData_t* b = nnInputBuffer(x->nn, &n);
  bool success = brain_fill_buffer_from_gimme(x, argc, argv, b, n);
  if(success) brain_calculate_output(x);

  //nnNeuronData_t* result = nnCalculateOutputForInput(x->nn, input, numInputs, numOutputs);
}

/*------------------------------------------------------------*/
void brain_index_of_highest_output_neuron(t_brain *x)
{
  nnNeuronCount_t result = nnIndexOfHighestOutputNeuron(x->nn);
  brain_outlet_0_i(x, "index_of_highest_output_neuron", result);

}

/*------------------------------------------------------------*/
void brain_index_of_random_output_neuron(t_brain *x)
{
  nnNeuronCount_t result = nnIndexOfRandomOutputNeuron(x->nn);
  brain_outlet_0_i(x, "index_of_random_output_neuron", result);
}


