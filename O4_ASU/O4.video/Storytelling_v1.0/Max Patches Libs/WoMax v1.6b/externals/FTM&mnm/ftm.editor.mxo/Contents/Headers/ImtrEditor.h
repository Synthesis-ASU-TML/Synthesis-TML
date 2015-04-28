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
 * @brief This Interface have to be implemented by every editor: allows interaction with Tools and EditorContainer. 
 *
 * @see EditorContainer
 * @see ImtrEditorListener
 * @see guiinterfaces
 * @defgroup ImtrEditor ImtrEditor
 */

#ifndef _IMTR_EDITOR_H_
#define _IMTR_EDITOR_H_

#include "imtrjuce.h"
#include "juce.h"

class  ImtrEditor
{
public:
  /** Destructor. */
  virtual ~ImtrEditor() 
  {
	toolbarOpened = false;
	toolbarSticky = true;
	toolbarVisible = true;
	toolbarOpenedX = -1;
	toolbarOpenedY = -1;
	parentEditor = NULL;
  }
  
  ImtrEditorListener *listener;
  virtual ImtrEditorListener *getEditorListener(){return listener;};
  virtual void setEditorListener(ImtrEditorListener * l) {listener = l;};
  
  /** @name Object/interface 
  *  @{ */
  /** 
  * @brief returns the displayed object as void*
  * @return the object
  * @ingroup ImtrEditor
  */  
  virtual void * getObject() = 0;
  /** 
  * @brief returns the interface associated with the displayed object
  * @return the imtr_guiInterface
  * @ingroup ImtrEditor
  */ 
  virtual imtr_guiInterface *getInterface() = 0;
  
  virtual JUCE_EDITOR_NAMESPACE::Component *getContainer() = 0;
  
  virtual void changeInterface(JUCE_EDITOR_NAMESPACE::String interface_name) = 0;
  virtual void replaceInnerEditor(JUCE_EDITOR_NAMESPACE::Component *oldEditor, JUCE_EDITOR_NAMESPACE::Component *newEditor){};
  /** 
   * replace the object displayed in this editor
   * @param new_obj the new object
   * @param guiInterface the associated gui interface
   * @ingroup ImtrEditor
   */   
  virtual void replaceObject(void *new_obj, imtr_guiInterface *guiInterface) = 0;
  /** 
    * @brief called to force a graphic update of every object
    * @ingroup ImtrEditor
    */     
  virtual void objectRefresh(bool forceBackgroundUpdate) = 0;  
  /** 
    * @brief called when the object has changed his content
    * @ingroup ImtrEditor
    */   
  virtual void objectChanged(JUCE_EDITOR_NAMESPACE::String changeType) = 0;
  /** 
   * @brief called when the layout has changed
   * @ingroup ImtrEditor
   */   
  virtual void layoutChanged(bool isSuperposed) = 0;
  
  /** @}  Object/interface */
    
  /** @name View properties 
    *  @{ */
  /** 
    * @brief sets the background color
    * @param color
    * @ingroup ImtrEditor
    */ 
  virtual void setBackgroundColor(JUCE_EDITOR_NAMESPACE::Colour color) = 0;
  /** 
    * @brief sets the foreground color
    * @param color
    * @ingroup ImtrEditor
    */ 
  virtual void setForegroundColor(JUCE_EDITOR_NAMESPACE::Colour color) = 0;
  /** 
    * @brief get the background color
    * @return background color
    * @ingroup ImtrEditor
    */ 
  virtual JUCE_EDITOR_NAMESPACE::Colour getBackgroundColor() = 0;
  /** 
    * @brief get the foreground color
    * @return foreground color
    * @ingroup ImtrEditor
    */ 
  virtual JUCE_EDITOR_NAMESPACE::Colour getForegroundColor() = 0;
  /** 
    * @brief set the color mode
    * @param mode color mode 
    * @ingroup ImtrEditor
    */ 
  virtual void setColorMode(JUCE_EDITOR_NAMESPACE::String mode){};
  
  /** 
    * @brief returns the color mode
    * @return color mode 
    * @ingroup ImtrEditor
    */ 
  virtual JUCE_EDITOR_NAMESPACE::String getColorMode(){return JUCE_EDITOR_NAMESPACE::String::empty;};
  
  virtual void setViewLayout(JUCE_EDITOR_NAMESPACE::String layout){};
  virtual JUCE_EDITOR_NAMESPACE::String getViewLayout(){return JUCE_EDITOR_NAMESPACE::String::empty;};
  /** 
    * @brief set opacity
    * @param alpha opacity (0.0f completely transaprent, 1.0f completely opaque) 
    * @ingroup ImtrEditor
    */ 
  virtual void setOpacity(float alpha) = 0;  
  /** 
    * @brief set as the foremost editor in tabbed component
    * @param isForemost true is the foremost
    * @ingroup ImtrEditor
    */ 
  virtual void setForemost(bool isForemost) = 0;
  /** 
    * @brief set the minimum value displayed by the editor
    * @param vmin the minimum
    * @ingroup ImtrEditor
    */ 
  virtual void setViewMin(float vmin){};
  /** 
    * @brief set the maximum value displayed by the editor
    * @param vmax the maximum
    * @ingroup ImtrEditor
    */ 
  virtual void setViewMax(float vmax){};
  /** 
    * @brief set the bounds for the values displayed by the editor
    * @param vmin the minimum
    * @param vmax the maximum
    * @ingroup ImtrEditor
    */ 
  virtual void setViewBounds(float vmin, float vmax){};
  /** 
   * @brief set the bounds for the values displayed by the editor, to min-max of the content
   * @ingroup ImtrEditor
   */ 
  virtual void setViewBoundsToContent(){};
  /** 
   * @brief set the bounds for the values displayed by the editor to default
   * @ingroup ImtrEditor
   */ 
  virtual void setViewBoundsDefault(){};
  
  virtual void setAutoViewBounds(int auto) = 0;
  /** 
    * @brief gets the bounds for the values displayed by the editor
    * @param vmin get the minimum
    * @param vmax get the maximum
    * @ingroup ImtrEditor
    */ 
  virtual void getViewBounds(float *vmin, float *vmax){*vmax = 0.0f; *vmin = 0.0f;};
  /** 
    * @brief set the depth bounds for the values displayed by the editor
    * @param cmin the minimum
    * @param cmax the maximum
    * @ingroup ImtrEditor
    */ 
  virtual void setDepth(float cmin, float cmax){};
  /** 
    * @brief gets the depth bounds for the values displayed by the editor
    * @param cmin get the minimum
    * @param cmax get the maximum
    * @ingroup ImtrEditor
    */ 
  virtual void getDepth(float *cmin, float *cmax){*cmin = 0.0f; *cmax = 0.0f;};
  /** 
    * @brief set the shape
    * @param shape the shape name
    * @ingroup ImtrEditor
    */ 
  virtual void setShape(JUCE_EDITOR_NAMESPACE::String shape){};
  /** 
    * @brief return the shape
    * @return the shape name
    * @ingroup ImtrEditor
    */ 
  virtual JUCE_EDITOR_NAMESPACE::String getShape(){return JUCE_EDITOR_NAMESPACE::String::empty;};
  /** 
    * @brief sets the step
    * @param step the step
    * @ingroup ImtrEditor
    */ 
  virtual void setStep(float step){};
  /** 
    * @brief gets the step
    * @return the step
    * @ingroup ImtrEditor
    */ 
  virtual float getStep(){return 0.0f;};
  /** 
   * @brief sets the name
   * @param name the name
   * @ingroup ImtrEditor
   */ 
  virtual void setName(JUCE_EDITOR_NAMESPACE::String ed_name){ name = ed_name;};
  /** 
   * @brief gets the name
   * @return the name
   * @ingroup ImtrEditor
   */ 
  virtual JUCE_EDITOR_NAMESPACE::String getName(){return name;};
  
  virtual void setHeaderVisible(bool vis){};
  virtual bool getHeaderVisible(){return false;};
  virtual void setHeaderBackgroundColor(JUCE_EDITOR_NAMESPACE::Colour color){};
  virtual JUCE_EDITOR_NAMESPACE::Colour getHeaderBackgroundColor(){return JUCE_EDITOR_NAMESPACE::Colours::white;};
  virtual void setHeaderForegroundColor(JUCE_EDITOR_NAMESPACE::Colour color){};
  virtual JUCE_EDITOR_NAMESPACE::Colour getHeaderForegroundColor(){return JUCE_EDITOR_NAMESPACE::Colours::black;};
  virtual void setHeaderBorderColor(JUCE_EDITOR_NAMESPACE::Colour color){};
  virtual JUCE_EDITOR_NAMESPACE::Colour getHeaderBorderColor(){return JUCE_EDITOR_NAMESPACE::Colours::white;};
  virtual void setGridVisible(bool vis){};
  virtual bool getGridVisible(){return false;};
  virtual void setGridColor(JUCE_EDITOR_NAMESPACE::Colour color){};
  virtual JUCE_EDITOR_NAMESPACE::Colour getGridColor(){return JUCE_EDITOR_NAMESPACE::Colours::white;};
  virtual void setScrollbarsVisible(bool vis){};
  virtual bool getScrollbarsVisible(){return false;};
  
  virtual void setViewVisible(bool vis) = 0;
  virtual bool isViewVisible() = 0;
  virtual JUCE_EDITOR_NAMESPACE::Component *getPlaceholder() = 0;
  
  bool toolbarOpened;
  bool toolbarSticky;
  bool toolbarVisible;
  JUCE_EDITOR_NAMESPACE::Component *toolbar;
  int toolbarOpenedX;
  int toolbarOpenedY;
  virtual void setToolbarOpened(bool opened, bool sticky){toolbarOpened = opened; toolbarSticky = sticky;};
  virtual void setToolbarVisible(bool visible)
  {
	toolbarVisible = visible;
	toolbar->setVisible(toolbarVisible);
  };
  virtual bool isToolbarOpened(){return toolbarOpened;};
  virtual bool isToolbarSticky(){return toolbarSticky;};
  virtual bool isToolbarVisible(){return toolbarVisible;};
  virtual JUCE_EDITOR_NAMESPACE::Rectangle getToolbarBounds(){return toolbar->getBounds();};
  virtual void setToolbarPosition(int x, int y){toolbarOpenedX = x; toolbarOpenedY = y;};
  virtual int getToolbarIndent(){return 0;};
  
  ImtrEditor *parentEditor;
  virtual ImtrEditor *getParentEditor(){return parentEditor;};
  virtual void setParentEditor(ImtrEditor *parent){parentEditor = parent;};
  
  virtual JUCE_EDITOR_NAMESPACE::StringArray getChangedProperties() = 0;
  
  /** @}  View properties */
  
  /** @name Coordinates conversion 
    *  @{ */
  /** 
    * @brief returns the graphic x-coord for the given value
    * @param x the value 
    * @return the x coordinate
    * @ingroup ImtrEditor
    */ 
  virtual int editorGetX(double x) = 0;
  /** 
    * @brief returns the graphic y-coord for the given value
    * @param y the value 
    * @return the y coordinate
    * @ingroup ImtrEditor
    */ 
  virtual int editorGetY(double y) = 0;
  /** 
    * @brief returns the value corresponding to the given x graphic coordinate
    * @param x the x graphic coordinate
    * @return the value
    * @ingroup ImtrEditor
    */ 
  virtual double editorGetInvX(float x) = 0;
  /** 
    * @brief returns the value corresponding to the given y graphic coordinate
    * @param y the y graphic coordinate
    * @return the value
    * @ingroup ImtrEditor
    */ 
  virtual double editorGetInvY(float y) = 0;
  /** @} Coordinates conversion */
  
  /** @name Object description 
    *  @{ */
  /** 
    * @brief returns the object description
    * @return the object description
    * @ingroup ImtrEditor
    */   
  JUCE_EDITOR_NAMESPACE::String getDescription(){return description;}; 
   /** 
    * @brief sets the object description (displayed in the tab, in superposed layout)
    * @param descr object description
    * @ingroup ImtrEditor
    */ 
  void setDescription(JUCE_EDITOR_NAMESPACE::String descr){description = descr;}; 
  
  /** @} Object description */
  
  /** 
    * @brief Called to add a new value to the given coordinates
    * @param x the x coord
    * @param y the y coord
    * @param isShiftDown true if the shift is down, to deal with selection
    * @ingroup ImtrEditor
    */ 
  virtual void addToLocation(int x, int y, bool isShiftDown) = 0;
  /** 
   * @brief called to special interaction responding to Command+Alt click
   * @param x the x coord
   * @param y the y coord
   * @param isShiftDown true if the shift is down, to deal with selection
   * @ingroup ImtrEditor
   */ 
  virtual void commandAltInteraction(int x, int y, bool isShiftDown) = 0;

  /** 
   * @brief Called to set the current tool
    * @param tool the new current tool
    * @ingroup ImtrEditor
    */   
  virtual void setTool(JUCE_EDITOR_NAMESPACE::MouseListener *tool) = 0;
  virtual int getCurrentToolIndex() = 0;
  
  /** 
    * @brief Called at start of a mouse drag on this editor
    * @param x x-coord where start the drag action
    * @param y y-coord where start the drag action
    * @param w width of the current selection rectangle
    * @param h height of the current selection rectangle
    * @param isShiftDown true if the shift is down, to deal with selection
    * @ingroup ImtrEditor
    */     
  virtual void startDragging(int x, int y, int w, int h, bool isShiftDown) = 0;
  /** 
    * @brief return true if the current action is a selection
    * @return true if is during a selection 
    * @ingroup ImtrEditor
    */     
  virtual bool isSelecting() = 0;
  /** 
    * @brief return true if the current action is a region selection
    * @return true if is during a region selection 
    * @ingroup ImtrEditor
    */       
  virtual bool isSelectingRegion() = 0;
  /** 
    * @brief return true if the current action is a move of selection
    * @return true if is during a move of selection 
    * @ingroup ImtrEditor
    */  
  virtual bool isMovingSelection() = 0;
  /** 
    * @brief Set a the selecting region flag
    * @param isSelectingRegion true during selection, false for no selection
    * @ingroup ImtrEditor
    */   
  virtual void setSelectingRegion(bool isSelectingRegion) = 0;
  /** 
    * @brief Called when selection rectangle changes
    * @param x x-coord of rectangle
    * @param y y-coord of rectangle
    * @param w width of rectangle
    * @param h height of rectangle
    * @ingroup ImtrEditor
    */   
  virtual void setSelectionRect(int x, int y, int w, int h) = 0;
  /** 
    * @brief Called when dragging a selection
    * @param x current x for this drag
    * @param y current y for this drag
    * @param dx distance from start drag x
    * @param dy distance from start drag y
    * @ingroup ImtrEditor
    */   
  virtual void dragSelection(int x, int y, int dx, int dy, bool isShiftDown) = 0;
  /** 
   * @brief Called when dragging with command down
   * @param x current x for this drag
   * @param y current y for this drag
   * @param dx distance from start drag x
   * @param dy distance from start drag y
   * @ingroup ImtrEditor
   */    
  virtual void dragWithCommand(int x, int y, int dx, int dy) = 0;
  /** 
    * @brief Called at selection end (mouse up)
    * @ingroup ImtrEditor
    */ 
  virtual void endSelecting() = 0;
  /** 
    * @brief Called at selection region end (mouse up)
    * @ingroup ImtrEditor
    */ 
  virtual void endSelectingRegion() = 0;
  /** 
    * @brief Called at moving selection end (mouse up)
    * @ingroup ImtrEditor
    */ 
  virtual void endMovingSelection() = 0;
  
  virtual bool isChangingPosition() = 0;
  virtual void changePosition(int x, int y, bool display) = 0;
  
  /** @} Tools interaction */
  
  JUCE_EDITOR_NAMESPACE::StringArray replacementKeys;
  JUCE_EDITOR_NAMESPACE::Array <JUCE_EDITOR_NAMESPACE::Component *> replacementValues;
  
  void setReplacement(JUCE_EDITOR_NAMESPACE::Component *replacement, JUCE_EDITOR_NAMESPACE::String interfaceName)
  {
    replacementKeys.add(interfaceName);
    replacementValues.add(replacement);
  }
  JUCE_EDITOR_NAMESPACE::Component *getReplacement(JUCE_EDITOR_NAMESPACE::String interfaceName)
  {
    return replacementValues[replacementKeys.indexOf(interfaceName)];
  }
  JUCE_EDITOR_NAMESPACE::StringArray getReplacementNames() { return replacementKeys;}
  void clearReplacements()
  {
    replacementKeys.clear();
    replacementValues.clear();
  }
  void updateReplacements(void *obj)
  {
    int i;
    for(i = 0; i < replacementValues.size(); i++)
    {
      ImtrEditor *editor = (dynamic_cast<ImtrEditor *>(replacementValues[i]));
      editor->replaceObject(obj, editor->getInterface());
    }
  }
  
  virtual void backgroundColorChanged(JUCE_EDITOR_NAMESPACE::Colour color) = 0;
  virtual float getOriginalLength() = 0;
  virtual float getOriginalHMin() = 0;
  virtual void initOriginalLength() = 0;
  virtual void postError(JUCE_EDITOR_NAMESPACE::String error) = 0;
  virtual void exportAsPostScript(JUCE_EDITOR_NAMESPACE::Graphics& g) = 0;
  
  virtual bool haveInfoPanel() = 0;
  virtual JUCE_EDITOR_NAMESPACE::Image *getInfoImage() = 0;
  
  JUCE_EDITOR_NAMESPACE::String description;
  JUCE_EDITOR_NAMESPACE::String name;
};

#endif   // _IMTR_EDITOR_H_
