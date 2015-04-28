
class Label
{
  int lx, ly;
  int lw, lh;
  color basecolor = color(150);
  color textcolor = color(200);
  String label;
  PFont font;
  int fontSize;
  boolean enabled = true;
  
  Label(int x, int y, String v)
  {
    lx = x;
    ly = y;
    label = v; 
  }
  
  void configLabel(PFont f, int s)
  {
    font = f;
    fontSize = s;
    textFont(f, s);
    lw = (int) textWidth(label);
    lh = s;
  }
  
  void positionLabel(int x, int y)
  {
    lx = x;
    ly = y;
  }
  
  void enable(boolean e)
  {
    enabled = e;
    display();
  }
  
  void setLabel(String v)
  {
    label = v;
    textFont(font, fontSize);
    lw = (int) textWidth(label);
  }
  
  String getLabel()
  {
    return label;
  }
  
  int getHeight()
  {
    return lh;
  }
  
  int getWidth()
  {
    return lw;
  }
  
  void setBaseColor(color c)
  {
    basecolor = c;
  }
  
  void setTextColor(color c)
  {
    textcolor = c;
  }
  
  void display()
  {
    if (enabled) {
      fill(textcolor);
      smooth();
      textFont(font, fontSize);
      text(label, lx, ly+fontSize);
    }
  }
}
  
  
class Button
{
  int x, y;
  int w, h;
  color basecolor = color(150);
  color activecolor = color(200);
  color textcolor = color(250);
  color currentcolor;
  boolean enabled = false;
  Label bl;
  
  Button(int ix, int iy, int iw, int ih, String l, PFont f, int fs) 
  {
    int lx, ly;
    
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    bl = new Label(0, 0, l);
    bl.configLabel(f, fs);
    lx = x + ((w - bl.getWidth())/2);
    ly = y + ((h - fs) / 2);
    bl.positionLabel(lx, ly);
    bl.setTextColor(textcolor);
    bl.setBaseColor(basecolor);
    currentcolor = basecolor;
  }
    
  void enable(boolean e)
  {
    if (e != enabled) {
      enabled = e;
      if (enabled) {
        currentcolor = activecolor;
      } else {
        currentcolor = basecolor;
      }
      display();
    }
  }
  
  void setBaseColor(color c)
  {
    basecolor = c;
    if (!enabled) {
      currentcolor = c;
    }
  }
  
  void setActiveColor(color c)
  {
    activecolor = c;
    if (enabled) {
      currentcolor = c;
    }
  }
  
  void setTextColor(color c)
  {
    textcolor = c;
    bl.setTextColor(c);
  }

  boolean pressed() 
  {
    boolean newPressed = overRect();
    if (!enabled && newPressed) {
      enable(true);
    }
    return(newPressed);
  }

  boolean overRect() 
  {
    if (mouseX >= x && mouseX <= x+w && 
      mouseY >= y && mouseY <= y+h) {
      return true;
    } 
    else {
      return false;
    }
  }
  
  void display() 
  {
    stroke(255);
    fill(currentcolor);
    rect(x, y, w, h);
    bl.setBaseColor(currentcolor);
    bl.display();
  }

}

