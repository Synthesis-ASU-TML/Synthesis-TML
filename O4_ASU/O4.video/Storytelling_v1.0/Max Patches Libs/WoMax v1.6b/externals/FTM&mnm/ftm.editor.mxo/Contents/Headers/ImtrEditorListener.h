/*
 * IMTR EDITOR 
 * Copyright (C) 1994, 1995, 1998, 1999, 2007 by IRCAM-Centre Georges Pompidou, Paris, France.
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 2.1
 * of the License, or (at your option) any later version.
 * 
 * See file COPYING.LIB for further informations on licensing terms.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 * 
 */

/**
 * @brief This Interface have to be implemented by the root Juce Component, containing EditorContainer.
 * This component have to interact directly with the System, to print messages or to output objects or lists
 *
 * See ftm.editor.cpp as example
 *
 * @see ImtrEditor
 * @see EditorContainer
 * @see guiinterfaces
 * @defgroup ImtrEditorListener ImtrEditorListener
 */

#ifndef _IMTR_EDITOR_LISTENER_H_
#define _IMTR_EDITOR_LISTENER_H_

#include "juce.h"

class  ImtrEditorListener
{
public:
  /** Destructor. */
  virtual ~ImtrEditorListener() {}
  /** 
  * @brief output one object (corresponding to an ImtrEditor)
  * @param obj the object
  * @ingroup ImtrEditorListener
  */
  virtual void outputObject(void *obj) = 0;
  /** 
  * @brief Output a message composed by one ore more symbols (String) followed by a list of integers 
  * @param symbols array of strings
  * @param values array of integers
  * @ingroup ImtrEditorListener
  */
  virtual void outputIntegers(JUCE_EDITOR_NAMESPACE::StringArray symbols, JUCE_EDITOR_NAMESPACE::Array <int> values) = 0;
  /** 
    * @brief Output a message composed by one ore more symbols (String) followed by a list of floats 
    * @param symbols array of strings
    * @param values array of floats
    * @ingroup ImtrEditorListener
    */
  virtual void outputFloats(JUCE_EDITOR_NAMESPACE::StringArray symbols, JUCE_EDITOR_NAMESPACE::Array <float> values) = 0;
  /** 
    * @brief posts an error message
    * @param error the error message
    * @ingroup ImtrEditorListener
    */
  virtual void postError(JUCE_EDITOR_NAMESPACE::String error) = 0;
  /** 
   * @brief do an action by name
   * @param action name
   * @ingroup ImtrEditorListener
   */
  virtual void doAction(JUCE_EDITOR_NAMESPACE::String action) = 0;    
  virtual void cursorChanged(const JUCE_EDITOR_NAMESPACE::MouseCursor::StandardCursorType type) = 0;
  virtual void changeEditorInterface(JUCE_EDITOR_NAMESPACE::Component *editor, void *obj, JUCE_EDITOR_NAMESPACE::String newInterfaceName, JUCE_EDITOR_NAMESPACE::String oldInterfaceName) = 0;
};

#endif   // _IMTR_EDITOR_LISTENER_H_
