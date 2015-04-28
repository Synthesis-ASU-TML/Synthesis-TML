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
 * EditorContainer is the main container component for imtr editors: 
 * editors can be layed out juxtaposed as a list, or superposed in a tabbed component.
 * Editors are time aligned, and can have vertical or horizontal orientation.
 * By default a time scrollbar (for zoom and scroll) is displayed.
 *
 * Here un example, instantiating EditorContainer with a set of ImtrEditor, in ftm:
 * @code 
 // create and add the EditorContainer in your component (implementing ImtrEditorListener interface)
 ...
 addAndMakeVisible(editorContainer = new EditorContainer(this));
 ...
 
 // set the content of the container with a set of ImtrEditors, associated with objets implementing a imtr_guiInterface
 void createMultiEditor(int ac, fts_atom_t *at)
 {
   int i;
   char buf[256];
   fts_object_t *obj;
   fts_symbol_t interface_name;
   imtr_guiInterface *gui_interface;
   Component * c;
   Array <ImtrEditor *> imtreditors;
   
   for(i = 0; i<ac; i+=2)
   {
     obj = fts_get_object(at + i);
     interface_name = fts_get_symbol(at+i+1);
     gui_interface = (imtr_guiInterface *)fts_object_get_gui_interface(obj, interface_name);
     c = editorContainer->createEditor((void *)obj, gui_interface);
     imtreditors.add(dynamic_cast<ImtrEditor *>(c));
     (dynamic_cast<ImtrEditor *>(c))->setDescription(String( fts_symbol_name(fts_object_get_id(obj))) +":"+ 
                                                    String( fts_symbol_name(fts_object_get_class_name(obj))));
   }
   editorContainer->createMultiEditor(imtreditors);
 } 
 * @endcode
 *
 * @see ImtrEditor
 * @see ImtrEditorListener
 * @see guiinterfaces
 * @defgroup EditorContainer EditorContainer
*/

#ifndef _EDITOR_CONTAINER_H_
#define _EDITOR_CONTAINER_H_

#ifdef DISABLE_JUCE_NAMESPACE
#define DONT_SET_USING_JUCE_NAMESPACE 1
#endif

#include "juce.h"
#include "imtrjuce.h"
#include "ScrollZoomListener.h"
#include "EditorTool.h"
#include "EditorToolbarImages.h"

class ImtrEditor;
class EditorContainer;

class EditorLookAndFeel: public JUCE_EDITOR_NAMESPACE::LookAndFeel
{
  EditorContainer *container;
public :
  EditorLookAndFeel(EditorContainer *container);
  void drawTabButtonText (JUCE_EDITOR_NAMESPACE::Graphics& g, int x, int y, int w, int h,
                          const JUCE_EDITOR_NAMESPACE::Colour& preferredBackgroundColour, int tabIndex, const JUCE_EDITOR_NAMESPACE::String& text,
                          JUCE_EDITOR_NAMESPACE::Button& button, JUCE_EDITOR_NAMESPACE::TabbedButtonBar::Orientation orientation,
                          const bool isMouseOver, const bool isMouseDown, const bool isFrontTab);
};


class EditorTabbedContainer : public JUCE_EDITOR_NAMESPACE::TabbedComponent
{
  EditorContainer *container;
  JUCE_EDITOR_NAMESPACE::Colour foreTabColor;
public:
  EditorTabbedContainer(const JUCE_EDITOR_NAMESPACE::TabbedButtonBar::Orientation orientation, EditorContainer *container);
  ~EditorTabbedContainer();
  void currentTabChanged (const int newCurrentTabIndex, const JUCE_EDITOR_NAMESPACE::String& newCurrentTabName);
  void refresh();
  void opacityChanged();
  void backgroundChanged(int index, JUCE_EDITOR_NAMESPACE::Colour color);
  bool isSelected(JUCE_EDITOR_NAMESPACE::Component *editor);
};

class EditorContainer : public JUCE_EDITOR_NAMESPACE::Component, 
                        public ScrollZoomListener, 
                        public EditorResizerListener
{
public:
  /** @name Constructor/Destructor 
  *  @{ */
  /** 
  * @brief EditorContainer constructor.
  * @param listener a ImtrEditorListener listening system outputs and posts
  * @ingroup EditorContainer
  */
  EditorContainer(ImtrEditorListener *listener);
  /** Destructor. */
  ~EditorContainer();
  /** @} Constructor/Destructor */
  
  /** @name enum types
    *  @{ */
  /**
   * @brief layout types enumeration
   * @ingroup EditorContainer
   */
  enum layout_type {superposed /** */, juxtaposed /** */};
  /**
    * @brief orintation types enumeration.
   * @ingroup EditorContainer
   */
  enum orientation_type {horizontal /** */, vertical /** */};
  /**
   * @brief tool names enumeration.
   * @ingroup EditorContainer
   */
  enum tool_name {
	edit_tool /** the default tool: add, select, move remove data in editors; */,
	draw_tool /** add/draw data in editors; */,
    scrollzoom_tool /** zoom dragging in editor with shortCut Key, scroll just dragging */,
    cursor_tool /** click and/or drag moves cursor to the mouse position */,
    region_tool /** region selection */,
    lock_tool /** editor is locked, no interaction */
  };
  
  /**
   * @brief gui interface names enumeration.
   * @ingroup EditorContainer
   */
  enum interface_name {
	bpf_interface,
	markers_interface,
    matrix_interface,
    multiwave_interface,
    pixels_interface,
    score_interface,
	spectrogram_interface,
	wave_interface
  };
  /** @} enum types */
  
  /** @name Editors Instantiation 
    *  @{ */
  
  /** 
    * @brief sets the content of a container with an Array of ImtrEditors.
    * @param imtreditors Array of ImtrEditors
    * @ingroup EditorContainer
    */  
  void createMultiEditor(JUCE_EDITOR_NAMESPACE::Array <ImtrEditor *> imtreditors);

  /** 
    * @brief Creates an ImtrEditor to display an object with a given interface
    * @param obj the object to be displayed
    * @param gui_interface the interface defining the type of the editor
    * @return pointer to the editor as a Component
    * @ingroup EditorContainer
    */    
  JUCE_EDITOR_NAMESPACE::Component *createEditor(void *obj, imtr_guiInterface *gui_interface);

  /** 
   * @brief append an ImtrEditor to the content of a container.
   * @param editor the ImtrEditor
   * @ingroup EditorContainer
   */  
  void appendEditor(ImtrEditor *editor);  
  void insertEditor(int index, ImtrEditor *editor); 
  void removeEditor(JUCE_EDITOR_NAMESPACE::Component *editor);  

  /** 
   * @brief replace given imtrEditor with new editor for given interface name.
   * @param editor the ImtrEditor
   * @param interfaceName the interface name
   * @ingroup EditorContainer
   */  
  void changeEditorInterface(JUCE_EDITOR_NAMESPACE::Component *editor, void *obj, JUCE_EDITOR_NAMESPACE::String newInterfaceName, JUCE_EDITOR_NAMESPACE::String oldInterfaceName);
  
  void changeViewName(int index, JUCE_EDITOR_NAMESPACE::String newName);
  /** @} Editors Instantiation  */
  
  /** @name Editors acces 
    *  @{ */
  /** 
    * @brief Get the Array of ImtrEditors displayed by container
    * @return Array of ImtrEditors
    * @ingroup EditorContainer
    */  
  JUCE_EDITOR_NAMESPACE::Array <ImtrEditor *> getEditors() { return editors;}
  /** 
    * @brief Get number of editors inside container
    * @return number of editors
    * @ingroup EditorContainer
    */  
  int getEditorsSize() { return editors.size();}
  
  int getEditorsVisibleSize() ;
  
  void *getEditorObject(int index);
  
  int getIndxeOfView(ImtrEditor *view);
  /** 
    * @brief returns true if container contains one or more editors
    * @return true when editors size > 0
    * @ingroup EditorContainer
    */  
  bool hasEditors();
  /** 
    * @brief remove all editors from container 
    * @ingroup EditorContainer
    */  
  void clearEditors();
  /** @} Editors access  */
  
  /** @name Layout  
    *  @{ */
  
  /** 
    * @brief sets the layout for this container
    * @param mode the layout type
    * @param editorSizes array of the sizes of editors (used in juxtaposed layout)
    * @ingroup EditorContainer
    */  
  void setLayout(layout_type mode, JUCE_EDITOR_NAMESPACE::Array <float> editorSizes);
  /** 
    * @brief returns true if the container uses a superposed layout
    * @return true if layout is superposed
    * @ingroup EditorContainer
    */  
  bool isLayoutSuperposed(){return (layout == superposed);}
  
  
  JUCE_EDITOR_NAMESPACE::Array <float> getJuxtaposedSizes(){return juxtaposedEditorSizes;}
  
  /** @} Layout  */
    
  /** @name Orientation  
    *  @{ */
  /** 
    * @brief sets the orientation for this container
    * @param mode orientation type
    * @ingroup EditorContainer
    */  
  void setOrientation(orientation_type mode);
  /** 
    * @brief returns the container's orientation
    * @return orientation type as a String (horizontal / vertical)
    * @ingroup EditorContainer
    */  
  JUCE_EDITOR_NAMESPACE::String getOrientation();
  /** 
    * @brief returns true if the container is vertical
    * @return true if orientation is vertical
    * @ingroup EditorContainer
    */
  bool isVertical(){return (orientation == vertical);}
  /** @} Orientation  */
  
  /** @name Foremost  
    *  @{ */
  /** 
    * @brief sets the foremost container (in superposed layout)
    * @param index the index of the foremost editor
    * @ingroup EditorContainer
    */  
  void setForemost(int index);
  /** 
    * @brief returns the index of the foremost editor
    * @return index of the foremost editor (in superposed layout)
    * @ingroup EditorContainer
    */  
  int getForemost();
  /** 
    * @brief returns true if the given editor is the foremost in superposed layout
    * @return true if given editor is the foremost
    * @ingroup EditorContainer
    */
  bool isForemost(ImtrEditor *editor);
  /** @} Foremost  */
  
  /** @name Opacity  
    *  @{ */
  /** 
    * @brief sets the opacity for the container (used in superposed layout)
    * @param alpha the opacity (0.0f == transparent / 1.0f == opaque)
    * @ingroup EditorContainer
    */  
  void setOpacity(float alpha);
  /** 
    * @brief returns the container's opacity 
    * @return the container's opacity
    * @ingroup EditorContainer
    */  
  float getOpacity(){return opacity;}
  /** @} Opacity  */
  
  /** @name Region Selection  
    *  @{ */
  /** 
    * @brief sets the region selection
    * @param startTime begin of region selection
    * @param endTime end of region selection
    * @ingroup EditorContainer
    */  
  void setRegionSelection(float startTime, float endTime);
  /** 
    * @brief get the region selection bounds
    * @param startTime pointer to return region's begin value 
    * @param endTime pointer to return region's end value 
    * @ingroup EditorContainer
    */  
  void getRegionSelectionBounds(float *startTime, float *endTime);
  /** 
    * @brief returns true if a region is selected  
    * @return true if region is selected
    * @ingroup EditorContainer
    */  
  bool isRegionSelected();
  /** 
    * @brief deselect current region relection  
    * @ingroup EditorContainer
    */  
  void deselectRegion();
  /** 
    * @brief sets the region selection color
    * @param isBackground true if the region color is a shade of the container's background color
    * @param color the region selection color
    * @ingroup EditorContainer
    */  
  void setRegionSelectionColor(bool isBackground, JUCE_EDITOR_NAMESPACE::Colour color);
  /** 
    * @brief returns the region selection color
    * @return the region selection color
    * @ingroup EditorContainer
    */  
  JUCE_EDITOR_NAMESPACE::Colour getRegionSelectionColor(){return regionSelectionColor;}
  /** 
    * @brief hide/show current region selection
    * @return vis whether to show or hide the region
    * @ingroup EditorContainer
    */  
  void setRegionSelectionVisible(int vis);

    /** @} Region Selection  */
  
  /** @name Scrollbar properties  
    *  @{ */
  /** 
    * @brief sets the scrollbar color
    * @param isBackground true if the scrollbar color is a shade of the container's background color
    * @param color the scrollbar color
    * @ingroup EditorContainer
    */  
  void setDScrollColor(bool isBackground, JUCE_EDITOR_NAMESPACE::Colour color);
  /** 
    * @brief returns the scrollbar color
    * @return the scrollbar color
    * @ingroup EditorContainer
    */  
  JUCE_EDITOR_NAMESPACE::Colour getDScrollColor();
  /** 
    * @brief hide/show the scrollbar
    * @param vis whether to show or hide the scrollbar
    * @ingroup EditorContainer
    */  
  void setDScrollVisible(bool vis);
  /** 
    * @brief returns true is scrollbar is visible
    * @return if the scrollbar is visible
    * @ingroup EditorContainer
    */    
  bool isDScrollVisible(){return dscroll_visible;}
  /** 
    * @brief sets the scrollbar's size
    * @param size the scrollbar size in pixels
    * @ingroup EditorContainer
    */  
  void setDScrollSize(int size);   
  /** 
    * @brief returns the scrollbar's size
    * @return the scrollbar size in pixels
    * @ingroup EditorContainer
    */  
  int getDScrollSize(){return dscroll_size;}
  /** 
    * @brief removes the scrollbar from the container
    * @ingroup EditorContainer
    */  
  void removeScrollbar();
  
  JUCE_EDITOR_NAMESPACE::Component *getDScroll(){return dscroll;};
  /** @} Scrollbar properties  */

  /** @name InfoPanel properties  
   *  @{ */
  /** 
   * @brief hide/show the infopanel
   * @param vis whether to show or hide the infopanel
   * @ingroup EditorContainer
   */  
  void setInfoPanelVisible(bool vis);
  /** 
   * @brief returns true is infopanel is visible
   * @return if the infopanel is visible
   * @ingroup EditorContainer
   */    
  bool isInfoPanelVisible(){return infopanel_visible;}
  /** 
   * @brief sets the infoPanel's size
   * @param size the infoPanel size in pixels
   * @ingroup EditorContainer
   */  
  void setInfoPanelSize(int size);   
  /** 
   * @brief returns the infoPanel's size
   * @return the infoPanel size in pixels
   * @ingroup EditorContainer
   */  
  int getInfoPanelSize(){return infopanel_size;}
  
  void setInfoPanelGridVisible(bool grid_visible);
  bool isInfoPanelGridVisible(){return infopanel_grid_visible;}
  
  /** @} InfoPanel properties  */  
  
  /** @name Ruler properties  
   *  @{ */
  /** 
   * @brief hide/show the ruler
   * @param vis whether to show or hide the ruler
   * @ingroup EditorContainer
   */  
  void setRulerVisible(bool vis);
  /** 
   * @brief move ruler to the top or bottom of the editor
   * @param position top or bottom
   * @ingroup EditorContainer
   */  
  void setRulerPosition(bool on_top);
  /** 
   * @brief set ruler size
   * @param size the ruler size
   * @ingroup EditorContainer
   */  
  void setRulerSize(int size);
  /** 
   * @brief hide/show the rulerGrid
   * @param ruler_visible whether to show or hide the rulerGrid
   * @ingroup EditorContainer
   */  
  void setRulerGridVisible(bool ruler_visible);  
  /** 
   * @brief set ruler foreground color
   * @param fgcolor the color
   * @ingroup EditorContainer
   */  
  void setRulerForegroundColor(JUCE_EDITOR_NAMESPACE::Colour fgcolor);
  /** 
   * @brief set ruler background color
   * @param bgcolor the color
   * @ingroup EditorContainer
   */  
  void setRulerBackgroundColor(JUCE_EDITOR_NAMESPACE::Colour bgcolor);
  void drawRulerGrid(JUCE_EDITOR_NAMESPACE::Graphics& g, ImtrEditor *editor);
  int getContainerTextWidth(JUCE_EDITOR_NAMESPACE::String text, JUCE_EDITOR_NAMESPACE::Font *font);
  double findBestTimeStep(double duration); 
  int getNumOfDigits(double time);
  /** 
   * @brief returns true is ruler is visible
   * @return if the ruler is visible
   * @ingroup EditorContainer
   */    
  bool isRulerVisible(){return ruler_visible;}
  /** 
   * @brief returns true is rulerGrid is visible
   * @return if the rulerGrid is visible
   * @ingroup EditorContainer
   */ 
  bool isRulerGridVisible(){return ruler_grid_visible;}  
  /** 
   * @brief returns true is ruler is on top of editor
   * @return if the ruler is on top
   * @ingroup EditorContainer
   */      
  bool isRulerOnTop(){return ruler_on_top;}
  /** 
   * @brief returns ruler size
   * @return ruler size
   * @ingroup EditorContainer
   */      
  int getRulerSize(){return ruler_size;}
  /** 
   * @brief returns ruler backgorund color
   * @return ruler bgcolor
   * @ingroup EditorContainer
   */  
  JUCE_EDITOR_NAMESPACE::Colour getRulerBackground();
  /** 
   * @brief returns ruler foreground color
   * @return ruler fgcolor
   * @ingroup EditorContainer
   */ 
  JUCE_EDITOR_NAMESPACE::Colour getRulerForeground();
  /** @} InfoPanel properties  */ 
  
  /** @name Domain  
    *  @{ */
  /** 
    * @brief sets the domain minimum
    * @param min the domain minimum
    * @ingroup EditorContainer
    */  
  void setDomainMin(float min);
  /** 
    * @brief sets the domain maximum
    * @param max the domain maximum
    * @ingroup EditorContainer
    */  
  void setDomainMax(float max);
  /** 
    * @brief sets the domain bounds
    * @param min the domain minimum
    * @param max the domain maximum
    * @ingroup EditorContainer
    */  
  void setDomainBounds(float min, float max);
  /** 
    * @brief sets the domain center
    * @param center the domain center
    * @param range the domain range
    * @ingroup EditorContainer
    */  
  void setDomainCenter(float center, float range);
  /** 
    * @brief returns the domain min
    * @return the domain min
    * @ingroup EditorContainer
    */  
  float getDomainMin(){return domain_min;}
  /** 
    * @brief returns the domain max
    * @return the domain max
    * @ingroup EditorContainer
    */  
  float getDomainMax(){return domain_max;}
  /** 
    * @brief returns the domain range
    * @return the domain range
    * @ingroup EditorContainer
    */  
  float getDomainRange(){return domain_range;}
  /** @} Domain  */
  
  /** @name View Properties 
    * (a view is the display for an editor inside the container)
    *  @{ */
  /** 
    * @brief sets the i-th view's name
    * @param index index of the view
    * @param name the name
    * @ingroup EditorContainer
    */ 
  void setViewName(int index, JUCE_EDITOR_NAMESPACE::String name);
  /** 
    * @brief sets the i-th view's foreground color
    * @param index index of the view
    * @param color the foreground color
    * @ingroup EditorContainer
    */ 
  void setViewForegroundColor(int index, JUCE_EDITOR_NAMESPACE::Colour color);
  /** 
    * @brief sets the i-th view's background color
    * @param index index of the view
    * @param color the background color
    * @ingroup EditorContainer
    */ 
  void setViewBackgroundColor(int index, JUCE_EDITOR_NAMESPACE::Colour color);
  /** 
    * @brief sets the i-th view's color mode (used by Spectrogram editor)
    * @param index index of the view
    * @param mode the color mode (all_colors, fore_color)
    * @ingroup EditorContainer
    */ 
  void setViewColorMode(int index, JUCE_EDITOR_NAMESPACE::String mode); 

  void setViewLayout(int index, JUCE_EDITOR_NAMESPACE::String layout); 
  /** 
    * @brief sets the i-th view's shape (used by Bpf and Fvec editor)
    * @param index index of the view
    * @param shape the shape (for Bpf: bpf, lines, peaks, steps; for Fvec: lines, points, peaks, zeropeaks)
    * @ingroup EditorContainer
    */ 
  void setViewShape(int index, JUCE_EDITOR_NAMESPACE::String shape); 
  /** 
    * @brief sets the i-th view's step (used by Spectrogram editor) .........................
    * @param index index of the view
    * @param step the step 
    * @ingroup EditorContainer
    */ 
  void setViewStep(int index, float step); 
  /** 
    * @brief sets the i-th view's values range min
    * @param index index of the view
    * @param min values range min 
    * @ingroup EditorContainer
    */ 
  void setViewMin(int index, float min);
  /** 
    * @brief sets the i-th view's values range max
    * @param index index of the view
    * @param max 'values range' max 
    * @ingroup EditorContainer
    */ 
  void setViewMax(int index, float max);
  /** 
    * @brief sets the i-th view's values range bounds
    * @param index index of the view
    * @param min 'values range' min
    * @param max 'values range' max
    * @ingroup EditorContainer
    */ 
  void setViewBounds(int index, float min, float max);
  /** 
   * @brief sets the i-th view's values range bounds to min/max of data content 
   * @param index index of the view
   * @ingroup EditorContainer
   */ 
  void viewBoundsToContent(int index);
  void setViewBoundsToContent(int index);
  /** 
   * @brief set the bounds for the values displayed by editors, to min-max of the content of every editor
   * @ingroup ImtrEditor
   */ 
  void alignViewBounds();  
  
  /** 
   * @brief sets on/off automatic vertical bounds alignment for every view
   * @param align on/off
   * @ingroup EditorContainer
   */ 
  void setAlignViewBounds(int align);
  
  /** 
   * @brief sets on/off automatic bounds fit to content for every view
   * @param index index of the view
   * @ingroup EditorContainer
   */ 
  void setAutoViewBounds(int auto);
  /** 
   * @brief sets the i-th view's values range bounds to default values
   * @param index index of the view
   * @ingroup EditorContainer
   */ 
  void setViewBoundsDefault(int index);
  /** 
    * @brief sets the i-th view's values center
    * @param index index of the view
    * @param center 'values range' center
    * @param range 'values range' range 
    * @ingroup EditorContainer
    */ 
  void setViewCenter(int index, float center, float range);
  /** 
    * @brief sets the i-th view's depth ..........................
    * @param index index of the view
    * @param min 
    * @param max  
    * @ingroup EditorContainer
    */ 
  void setViewDepth(int index, float min, float max);  
  
  void setViewHeaderVisible(int index, int vis);  
  void setViewHeaderBackgroundColor(int index, JUCE_EDITOR_NAMESPACE::Colour color);
  void setViewHeaderForegroundColor(int index, JUCE_EDITOR_NAMESPACE::Colour color);
  void setViewHeaderBorderColor(int index, JUCE_EDITOR_NAMESPACE::Colour color);
  void setViewGridVisible(int index, int vis);
  void setViewGridColor(int index, JUCE_EDITOR_NAMESPACE::Colour color);
  
  void setViewVisible(int index, int vis);
  
  void setViewScrollbarsVisible(int index, bool visible);
  
  void setViewToolbarOpened(int index, bool opened);
  void setViewToolbarPosition(int index, int x, int y);
  void setViewToolbarVisible(int index, bool visible);
  /** @} View Properties  */
  
  /** @name Tabs  
    *  @{ */
  /** 
    * @brief sets the Tabs background color
    * @param color the backgournd color
    * @ingroup EditorContainer
    */ 
  void setTabsBarBackgroundColor(JUCE_EDITOR_NAMESPACE::Colour color);
  /** 
    * @brief shows/hides Tabs
    * @param vis whether to show or hide the scrollbar
    * @ingroup EditorContainer
    */ 
  void setTabsVisible(bool vis);
  /** 
   * @brief returns true is tabs are visible
   * @return if tabs are visible
   * @ingroup EditorContainer
   */    
  bool isTabsVisible(){return tabs_visible;}
  /** 
    * @brief sets size in pixel of Tabs
    * @param size the size in pixel
    * @ingroup EditorContainer
    */ 
  void setTabsSize(int size); 
  /** 
   * @brief returns tabs size
   * @return tabs size
   * @ingroup EditorContainer
   */    
  int getTabsSize(){return tabs_size;}
  /** 
    * @brief gets tab name for the i-th view
    * @param index index of the view
    * @return the tab name
    * @ingroup EditorContainer
    */ 
  JUCE_EDITOR_NAMESPACE::String getTabName(int index);
  /** @} Tabs  */
  
  /** @name Split Bars (for Juxtaposed Layout)  
    *  @{ */
  /** 
    * @brief sets sizes of editors in juxtaposed layout.
    * @param editorSizes array of sizes to apply to the editors in juxtaposed layout.
    * Sizes are always used as relative size (ex: 100 50 150 ---> 1/3 1/6 1/2)
    * @return the tab name
    * @ingroup EditorContainer
    */ 
  void setSplit(JUCE_EDITOR_NAMESPACE::Array <float> editorSizes);  
  /** 
    * @brief sets the splits color 
    * @param isBackground true if the split color is a shade of the container's background color
    * @param color the splits color
    * @ingroup EditorContainer
    */ 
  void setSplitColor(bool isBackground, JUCE_EDITOR_NAMESPACE::Colour color);
  /** 
    * @brief show/hide splits. Whit hidden splits, editors are not resizables 
    * @param vis whether to show or hide the scrollbar
    * @ingroup EditorContainer
    */ 
  void setSplitVisible(bool vis);
  /** 
    * @brief sets the splits size 
    * @param size the splits size in pixels
    * @ingroup EditorContainer
    */ 
  void setSplitSize(int size);  
  /** @} Split Bars  */

  /** @name Cursor  
    *  @{ */
  /** 
    * @brief sets the cursor color 
    * @param color the cursor color
    * @ingroup EditorContainer
    */ 
  void setCursorColor(JUCE_EDITOR_NAMESPACE::Colour color);
  /** 
    * @brief gets the cursor color 
    * @return color the cursor color
    * @ingroup EditorContainer
    */ 
  JUCE_EDITOR_NAMESPACE::Colour getCursorColor(){return cursorColor;}
  /** 
    * @brief moves the cursor to the given time 
    * @return time the time
    * @ingroup EditorContainer
    */ 
  void moveCursor(float time);
  /** 
    * @brief show/hide cursor 
    * @param vis whether to show or hide the cursor
    * @ingroup EditorContainer
    */ 
  void setCursorVisible(int vis);
  void setCursorSelected(bool selected);
  /** 
    * @brief returns true if cursor is visible 
    * @return returns true if cursor is visible 
    * @ingroup EditorContainer
    */ 
  bool isCursorVisible(){return cursorVisible;}
  /** 
    * @brief sets the cursor size 
    * @param size in pixels
    * @ingroup EditorContainer
    */
  void setCursorSize(int size);
  /** 
    * @brief returns the cursor size 
    * @return cursor size in pixels
    * @ingroup EditorContainer
    */
  int getCursorSize(){return cursorSize;}
  
  /** 
    * @brief returns the cursor time 
    * @return cursor time
    * @ingroup EditorContainer
    */
  float getCursorTime() {return cursorTime;}
  /** 
   * @brief tell if x y are inside cursor (if visible)
   * @param x x-coord
   * @param y y-coord
   * @param editor origin of the mouse event
   * @return returns true if point is insiede cursor 
   * @ingroup EditorContainer
   */ 
  bool isMouseOnCursor(int x, int y, ImtrEditor *editor);
  
  /** @} Cursor  */
      
  /** @name Tools  
    *  @{ */
  /** 
    * @brief returns the current tool name 
    * @return current tool name
    * @ingroup EditorContainer
    */  
  tool_name getCurrentToolName() {return current_tool_name;}
  /** 
    * @brief sets the current tool 
    * @param tool the tool name
    * @ingroup EditorContainer
    */  
  void setTool(tool_name tool);
  /** @} Tools */

  /** @name Others... for internal use
    *  @{ */
  
  /* callback when displayed objects change */
  void objectChanged(JUCE_EDITOR_NAMESPACE::String changeType);
  
  void mouseDown(const JUCE_EDITOR_NAMESPACE::MouseEvent& e);
  
  JUCE_EDITOR_NAMESPACE::Colour getBackgroundColor(){return backcolor;} 
  void setColorShades(JUCE_EDITOR_NAMESPACE::Colour color);
  
  void outputRange();
  void outputCursorTime(float cursorTime);
  void outputSplit();
  void outputMousePressed(int isDown);
  void outputIntegers(JUCE_EDITOR_NAMESPACE::StringArray symbols, JUCE_EDITOR_NAMESPACE::Array <int> values){ listener->outputIntegers(symbols, values);}
  ImtrEditorListener *getImtrListener(){return listener;}
  void postError(JUCE_EDITOR_NAMESPACE::String error);
  
  int getX(double x);
  double getInvX(float x);
  
  void alignEditors();
  void updateContainer();
  void refreshScrollbar();
  void containerRefresh(bool forceBackgroundUpdate);
  
  EditorTool *getCurrentTool();
  
  void drawRegionSelection(JUCE_EDITOR_NAMESPACE::Graphics& g, ImtrEditor *editor); 
  bool doRegionSelection(ImtrEditor *editor);
  void endSelectionRegion();

  /* scroll and zoom */
  void scrollBarMoved (const double newRangeStart);
  void ZoomChanged(float newZoom);
  void incrementXZoom(int incr);
  void setXZoom(float newZoom);
  void setDefaultZoom();
  float getHZoom(){return h_zoom;}
  float getHTransposition(){return h_transp;}
  float getHLength(){return h_length;}
  float getHMin(){return h_min;}
  
  void updateScrollbar();
  
  /* EditorResizerListener interface */
  int getBarCurrentPosition(EditorResizerBar *bar);
  void setBarPosition(EditorResizerBar *bar, int position);
  void endResizing(EditorResizerBar *bar);
  void cursorChanged(const JUCE_EDITOR_NAMESPACE::MouseCursor::StandardCursorType type);

  /* used just by scrollbar */
  float getRangeMax();
  float getVisibleRange();
  float getVisibleMin();
  float getVisibleMax();  
  void getHorizontalRange(float *dmin, float *dmax);
  
  //void drawVerticalRange(JUCE_EDITOR_NAMESPACE::Graphics& g, ImtrEditor *editor);
  /** @} Others... */ 
  
  /* editor container listeners */
  JUCE_EDITOR_NAMESPACE::Array <EditorContainerListener *> containerListeners;
  void addEditorContainerListener(EditorContainerListener *listener){containerListeners.add(listener);}
  void removeEditorContainerListener(EditorContainerListener *listener){containerListeners.removeValue(listener);}
  void notifyEditorContainerListeners();
  
  JUCE_EDITOR_NAMESPACE::String formatDecimalString(JUCE_EDITOR_NAMESPACE::String, int n_digits);
  
  /* Saving properties */
  JUCE_EDITOR_NAMESPACE::StringArray getChangedContainerProperties();
  JUCE_EDITOR_NAMESPACE::StringArray getChangedDScrollProperties();
  JUCE_EDITOR_NAMESPACE::StringArray getChangedTabsProperties();
  JUCE_EDITOR_NAMESPACE::StringArray getChangedRulerProperties();
  
  void paint (JUCE_EDITOR_NAMESPACE::Graphics& g);
  void paintOverChildren(JUCE_NAMESPACE::Graphics &g);
  
  void exportAsPostScript(JUCE_EDITOR_NAMESPACE::LowLevelGraphicsPostScriptRenderer *postRender);

  /* Mouse Interaction from container */
  JUCE_EDITOR_NAMESPACE::Component* getComponentAt(const int x, const int y);
  void setMouseDown(int x, int y, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers);
  void setMouseDrag(int x, int y, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers);
  void setMouseDragDelta(int dx, int dy, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers);
  void setMouseEnter(int x, int y, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers);
  void setMouseExit(int x, int y, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers);
  void setMouseMove(int x, int y, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers);
  void setMouseUp(int x, int y, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers);
  void setMouseWheel(int x, int y, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers, double wheelIncrementX, double wheelIncrementY);
  void setMouseDblClick(int x, int y, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers);
  void setKeyPressed(long keycode, long textcharacter, JUCE_EDITOR_NAMESPACE::ModifierKeys modifiers);
  JUCE_EDITOR_NAMESPACE::Component *lastToolbarEntered;
  JUCE_EDITOR_NAMESPACE::Component *focusedComponent;
  JUCE_EDITOR_NAMESPACE::Component *lastEditorEntered;
  JUCE_EDITOR_NAMESPACE::Component *currentTextField;
  JUCE_EDITOR_NAMESPACE::Component *currentResizerBar;
  bool dscrolling; // if dscroll is scrolled
  bool barScrolling;// if other scrollBars are scrolled
  JUCE_EDITOR_NAMESPACE::Time lastMouseDownTime;
  int lastMouseDownX, lastMouseDownY, previousDragX, previousDragY;
  
  static const int DSCROLL_DEFAULT_SIZE = 10;
  static const int INFOPANEL_DEFAULT_SIZE = 35;
  static const int RULER_DEFAULT_SIZE = 15;
  static const int TABS_DEFAULT_SIZE = 20;
  static const int EDITOR_PLACEHOLDER_SIZE = 10;

  /* h_length: horizontal duration, corresponds to the max duration between editors */
  float h_length;
  float h_min;/*min horizontal value == 0.0 by default */
  
  /* images for toolbar */
  /////////////////////////////////////////////////////////
  JUCE_EDITOR_NAMESPACE::Image *getToolImage(tool_name tool);
  JUCE_EDITOR_NAMESPACE::Image *getInterfaceImage(interface_name interface);
private:  
    
  void createSuperposedMultiEditor(JUCE_EDITOR_NAMESPACE::Array <ImtrEditor *> imtreditors);
  void createJuxtaposedMultiEditor(JUCE_EDITOR_NAMESPACE::Array <ImtrEditor *> imtreditors);
  
  void createScrollBar();
  void initInfoPanel();
  void initEditorRuler();
 
  void resized();
  
  void InitContainer();
  void initTabbedContainer();
  
  void InitTools();
    
  /* split bars */
  void initSplitBars();
  void addSplitBars();
  void removeSplitBars();
  void clearSplitBars();
    
  void findJuxtaposedEditorsSizes();
  void initJuxtaposedEditorsSizes(JUCE_EDITOR_NAMESPACE::Array <float> editorSizes);
    
  /* listener */
  ImtrEditorListener *listener;
  
  /* editors */
  JUCE_EDITOR_NAMESPACE::Array <ImtrEditor *> editors;
  
  /* scrollbar */
  JUCE_EDITOR_NAMESPACE::Component *dscroll;
  int dscroll_size;
  bool dscroll_visible;
  
  /* infopanel */
  JUCE_EDITOR_NAMESPACE::Component *infoPanel;
  int infopanel_size;
  bool infopanel_visible;
  bool infopanel_grid_visible;
  
  /* ruler */
  JUCE_EDITOR_NAMESPACE::Component *editorRuler;
  bool ruler_visible;
  int ruler_size;
  bool ruler_grid_visible;
  
  /* tabs */
  EditorTabbedContainer *tabbedContainer;
  
  int tabs_size;
  bool tabs_visible;
  
  /* split bars */
  int split_size;
  bool split_visible;
  JUCE_EDITOR_NAMESPACE::Array <EditorResizerBar *> resizerBars;
  JUCE_EDITOR_NAMESPACE::Array <float> juxtaposedEditorSizes;
  JUCE_EDITOR_NAMESPACE::Array <float> tempEditorSizes;

  /* domain */
  float domain_min, domain_max, domain_range;
  
  /* layout */
  layout_type layout;
  
  /* orientation */
  orientation_type orientation;
  
  /* opacity */
  float opacity;
  
  /* backcolor */
  JUCE_EDITOR_NAMESPACE::Colour backcolor;
  
  JUCE_EDITOR_NAMESPACE::Font *rangeFont;
  
  /* cursor */
  float cursorTime;
  bool cursorVisible;
  bool cursorSelected;
  int cursorSize;
  JUCE_EDITOR_NAMESPACE::Colour cursorColor, cursorDarkerColor, cursorLightColor;
  
  /* look and feel */
  EditorLookAndFeel *editorLF;
   
  /* selection */
  bool selectionColorAsBackground;
  JUCE_EDITOR_NAMESPACE::Colour regionSelectionColor;
  float regionSelectionStart;
  float regionSelectionEnd;
  
  /* zoom */
  float h_zoom;
  
  /* transposition */
  float h_transp;
  
  /* view bounds alignment*/
  int align_view_bounds;
  int auto_view_bounds;
  
  /* tools */
  tool_name current_tool_name;

  EditorTool *currentTool;
  EditorTool *editTool;
  EditorTool *drawTool;
  EditorTool *scrollZoomTool;
  EditorTool *regionTool;
  EditorTool *cursorTool;
  
  /* ruler */
  bool ruler_on_top;
  /* Images for toolbar */
  /////////////////////////////////////////////////////////
  JUCE_EDITOR_NAMESPACE::Image *editToolImage;
  JUCE_EDITOR_NAMESPACE::Image *drawToolImage;
  JUCE_EDITOR_NAMESPACE::Image *cursorToolImage;
  JUCE_EDITOR_NAMESPACE::Image *regionToolImage;
  JUCE_EDITOR_NAMESPACE::Image *scrollZoomToolImage;
  JUCE_EDITOR_NAMESPACE::Image *bpfImage;
  JUCE_EDITOR_NAMESPACE::Image *markersImage;
  JUCE_EDITOR_NAMESPACE::Image *matrixImage;
  JUCE_EDITOR_NAMESPACE::Image *multiwaveImage;
  JUCE_EDITOR_NAMESPACE::Image *pixelsImage;
  JUCE_EDITOR_NAMESPACE::Image *scoreImage;
  JUCE_EDITOR_NAMESPACE::Image *spectroImage;
  JUCE_EDITOR_NAMESPACE::Image *waveImage;
};
#endif   // _EDITOR_CONTAINER_H_
