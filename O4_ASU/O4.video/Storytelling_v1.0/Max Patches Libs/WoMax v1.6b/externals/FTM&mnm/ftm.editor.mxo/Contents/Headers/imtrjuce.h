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

#ifndef _IMTR_JUCE_H_
#define _IMTR_JUCE_H_

#ifdef C_GUI_INTERFACE
extern "C" {
#endif
  
#include "guiinterfaces.h"

#ifdef C_GUI_INTERFACE
}
#endif 

#ifdef DISABLE_JUCE_NAMESPACE
#define JUCE_EDITOR_NAMESPACE JUCE_NAMESPACE
#else
#define JUCE_EDITOR_NAMESPACE
#endif

#include "ImtrEditorListener.h"
#include "ImtrEditor.h"
#include "EditorResizerBar.h"
#include "EditorContainerListener.h"
#include "EditorContainer.h"
#include "EditorScrollBar.h"
#include "EditorRuler.h"
#include "EditorPlaceholder.h"

class JUCE_EDITOR_NAMESPACE::Component;

JUCE_EDITOR_NAMESPACE::Component* createBpfEditor(void *obj, imtr_guiInterfaceBpf *bpfGui, EditorContainer *container, ImtrEditorListener *listener);
JUCE_EDITOR_NAMESPACE::Component* createWaveEditor(void *obj, imtr_guiInterfaceFvec *fvecGui, EditorContainer *container, ImtrEditorListener *listener);
JUCE_EDITOR_NAMESPACE::Component* createMarkersEditor(void *obj, imtr_guiInterfaceMarkers *markersGui, EditorContainer *container, ImtrEditorListener *listener);
JUCE_EDITOR_NAMESPACE::Component* createMatrixEditor(void *obj, imtr_guiInterfaceMatrix *matrixGui, EditorContainer *container, ImtrEditorListener *listener);
JUCE_EDITOR_NAMESPACE::Component* createMultiwaveEditor(void *obj, imtr_guiInterfaceMultiwave *multiwaveGui, EditorContainer *container, ImtrEditorListener *listener);
JUCE_EDITOR_NAMESPACE::Component* createPixelsEditor(void *obj, imtr_guiInterfacePixels *scoreGui, EditorContainer *container, ImtrEditorListener *listener);
JUCE_EDITOR_NAMESPACE::Component* createScoreEditor(void *obj, imtr_guiInterfaceScore *scoreGui, EditorContainer *container, ImtrEditorListener *listener);
JUCE_EDITOR_NAMESPACE::Component* createSpectrogramEditor(void *obj, imtr_guiInterfaceSpectrogram *spectroGui, EditorContainer *container, ImtrEditorListener *listener);

EditorTool *createEditTool(EditorContainer *container);
EditorTool *createScrollZoomTool(EditorContainer *container);
EditorTool *createRegionTool(EditorContainer *container);
EditorTool *createCursorTool(EditorContainer *container);
EditorTool *createDrawTool(EditorContainer *container);

JUCE_EDITOR_NAMESPACE::Component* createEditorScrollBar(EditorContainer *container, const bool isVertical);
JUCE_EDITOR_NAMESPACE::Component* createInfoPanel(EditorContainer *container);
JUCE_EDITOR_NAMESPACE::Component* createEditorRuler(EditorContainer *container);
JUCE_EDITOR_NAMESPACE::Component *createEditorToolbar(ImtrEditor *editor, bool showTools);
#endif

