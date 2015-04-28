/*
 *  reflect.object.h
 *  GameLibV2
 *
 *  Created by Michael Fortin on 04/03/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 */

#include "reflect.instance.h"

#ifndef REFLECT_OBJECT_H
#define REFLECT_OBJECT_H

namespace reflect
{
	//Handles basic object data
	class object
	{
		public:
			//Adds/removes references
			void retain();
			void release();
		
		protected:
			//Creates a reference to the object
			object();
			virtual ~object();

		private:
			//Structure holding internal data
			struct SObject;
			
			//Pointer to the internal structures
			SObject *m_pObjData;
			
			//Copy constructor (shares same ref/ptr) - should never be called
			object(object &in_obj);
			
			//Copy (=) - should never be called
			object &operator=(object &in_obj);
	};
	
	//Reference to an object
	class Object : public instance<object>
	{
		public:
			//Basic call
			Object() : instance<object>() {}
	};
}

#endif
