/*
 *  reflect.instance.h
 *  GameLibV2
 *
 *  Created by Michael Fortin on 09/04/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#ifndef REFLECT_INSTANCE_H
#define REFLECT_INSTANCE_H

namespace reflect
{
	/*
	 * instance
	 *		A normal C++ class that handles adding/releasing objects
	 *		This is so we can inline/help the compiler optimize...
	 *
	 *		Here, templates are really needed to avoid useless code; but
	 *		we will be specializing them to make something nice for the end-
	 *		user of the library.
	 */
	template<typename T>
	class instance
	{
		public:
			//Copy constructor (does a retain on each function call)
			instance(const instance<T> &in_toCopy)
			{
				m_obj = in_toCopy.m_obj;
				if (m_obj != NULL) m_obj->retain();
			}

			//Destructor (decrease retain count)
			~instance()
			{
				if (m_obj != NULL) 
					m_obj->release();
			}
		
			//Clear this instance...
			void nullify()
			{
				if (m_obj != NULL)
					m_obj->release();
				
				m_obj = NULL;
			}

			//Dereferencing? hand over the expected object
			inline T* operator->()
			{
				return m_obj;
			}

			//Dereferencing? hand over the expected object
			inline operator T*()
			{
				return m_obj;
			}

			//Assignment? update the addref/release info
			inline T* operator=(T *in_obj)
			{
				if (m_obj != NULL) m_obj->release();
				m_obj = in_obj;
				if (m_obj != NULL) m_obj->retain();
				return m_obj;
			}

			//Assignment? Release what we have, and add to the ref count
			inline T* operator=(const instance<T> &in_copy)
			{
				if (m_obj != NULL) m_obj->release();
				m_obj = in_copy.m_obj;
				if (m_obj != NULL) m_obj->retain();
				return m_obj;
			}

			//Call the equal operator as expected (inner variables)
			inline bool operator==(T* in_obj)
			{
				return (m_obj == in_obj);
			}

			//Call the != operator as expected (inner variables)
			inline bool operator!=(T* in_obj)
			{
				return (m_obj != in_obj);
			}
		
			//We could add in >, <.  Also, instance
		
		protected:
			//Creates a new instance
			instance(T * in_obj = NULL)
			{
				m_obj = in_obj;
				if (m_obj != NULL)
					m_obj->retain();
			}
		
		private:
			//Object that we are reference counting
			T *m_obj;
	};
};

#endif
