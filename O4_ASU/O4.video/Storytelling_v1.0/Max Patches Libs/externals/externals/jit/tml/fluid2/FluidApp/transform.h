/*
 *  transform.h
 *  FluidApp
 */

//A lot of what's done is a transformation from one representation to another.
//Such operations may depend upon objects, but need not be objects.  Thye just
//need an input source, and an output destination.
//
//Such transforms work as glue "between" objects.  Moving data from one state
//to another.  For example, a field object can have a child class describing
//the transforms.  Proper encapsulation would require getters/setters for
//everything -- overhead that goes against the goal of having a very fast
//piece of code.  Hence, the internal data must be used directly.
//
//The usual solution is to either have transforms functions within the target
//object, or have an object dedicated to doing the transform.
//
//The overhead of maintaining such objects defies the point of having them -
//for single-person objects, or so the theory goes.  Therefore, this little
//experiment instead defines a transform as a single function that takes
//in data + descriptors.
//
//	Hence, everything works on chunks.  Chunks can have meta-data, and this
//	is starting to sound obscenely complex.
//
//	The type of data that is usually dealt with are vector fields, vectors, and
//	scalars.  Some of the data may be encoded.
//
//
