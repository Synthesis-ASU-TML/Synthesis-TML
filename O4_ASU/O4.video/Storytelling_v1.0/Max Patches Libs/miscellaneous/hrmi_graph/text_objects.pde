

class HrDisplay
{
  int x, y;
  int w, h;
  int offsetx, offsety, texth;
  color basecolor = color(150);
  color textcolor = color(200);
  boolean enabled = false;
  int val = 0;
  Label l;
  
  HrDisplay(int ix, int iy, int iw, int ih, PFont f)
  {
    int lw;
    
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    l = new Label(0, 0, "0");
    texth = 2 * h / 3;
    l.configLabel(f, texth);
    lw = l.getWidth();
    offsetx = x + ((w - lw) / 2);
    offsety = y + 1;
    l.positionLabel(offsetx, offsety);
    l.setBaseColor(basecolor);
    l.setTextColor(textcolor);
  }
  
  void enable(boolean e)
  {
    enabled = e;
    display();
  }
  
  void setVal(int v)
  {
    int lw;
    
    val = v;
    l.setLabel(str(val));
    lw = l.getWidth();
    offsetx = x + ((w - lw) / 2);
    l.positionLabel(offsetx, offsety);
  }
  
  void setBaseColor(color c)
  {
    basecolor = c;
    l.setBaseColor(c);
  }
  
  void setTextColor(color c)
  {
    textcolor = c;
    l.setTextColor(c);
  }
  
  void display()
  {
    stroke(basecolor);
    fill(basecolor);
    rect(x, y, w, h);
    if (enabled) {
      l.display();
    }
  }
}



class StatusDisplay
{
  int x, y;
  int w, h;
  int offsetx, offsety, texth;
  color basecolor = color(150);
  color textcolor = color(200);
  boolean enabled = false;
  int val = 0;
  Label l11;
  Label l12;
  Label l13;
  Label l21;
  Label l22;
  Label l31;
  Label l41;
  
  StatusDisplay(int ix, int iy, int iw, int ih, PFont f)
  {
    int spacing;
    
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    texth = h/8;
    spacing = texth + texth/2;
    offsetx = x + (texth / 2);
    offsety = y + (texth / 2);
    
    l11 = new Label(offsetx, offsety, "Algorithm: Averaged");
    l12 = new Label(offsetx, offsety, "Algorithm: Raw");
    l13 = new Label(offsetx, offsety, "No HRMI Response");
    l21 = new Label(offsetx, offsety + spacing, "No heartbeat");
    l22 = new Label(offsetx, offsety + spacing, "Heartbeat detected");
    l31 = new Label(offsetx, offsety + 2*spacing, "Acquiring series");
    l41 = new Label(offsetx, offsety + 3*spacing, "Too much bad data");
    
    l11.configLabel(f, texth);
    l12.configLabel(f, texth);
    l13.configLabel(f, texth);
    l21.configLabel(f, texth);
    l22.configLabel(f, texth);
    l31.configLabel(f, texth);
    l41.configLabel(f, texth);
    
    l11.setBaseColor(basecolor);
    l12.setBaseColor(basecolor);
    l13.setBaseColor(basecolor);
    l21.setBaseColor(basecolor);
    l22.setBaseColor(basecolor);
    l31.setBaseColor(basecolor);
    l41.setBaseColor(basecolor);
    
    l11.setTextColor(textcolor);
    l12.setTextColor(textcolor);
    l13.setTextColor(textcolor);
    l21.setTextColor(textcolor);
    l22.setTextColor(textcolor);
    l31.setTextColor(textcolor);
    l41.setTextColor(textcolor);
  }
  
  void enable(boolean e)
  {
    enabled = e;
    display();
  }
  
  //
  //   v : Mask
  //       7: No response from HRMI
  //     6:4: Reserved
  //       3: Too much bad data
  //       2: Acquiring series
  //       1: Heartbeat detected
  //       0: Average / ~Raw
  void setVal(int v)
  {
    val = v;
  }
  
  void setBaseColor(color c)
  {
    basecolor = c;
    l11.setBaseColor(c);
    l12.setBaseColor(c);
    l13.setBaseColor(c);
    l21.setBaseColor(c);
    l22.setBaseColor(c);
    l31.setBaseColor(c);
    l41.setBaseColor(c);
  }
  
  void setTextColor(color c)
  {
    textcolor = c;
    l11.setTextColor(c);
    l12.setTextColor(c);
    l13.setTextColor(c);
    l21.setTextColor(c);
    l22.setTextColor(c);
    l31.setTextColor(c);
    l41.setTextColor(c);
  }
  
  void display()
  {
    int lw, lh;

    stroke(basecolor);
    fill(basecolor);
    rect(x, y, w, h);
    if (enabled) {
      if ((val & 0x80) == 0x80) {
        l11.enable(false);
        l12.enable(false);
        l13.enable(true);
      } else {
        if ((val & 0x01) == 0x01) {
          l12.enable(false);
          l13.enable(false);
          l11.enable(true);
        } else {
          l11.enable(false);
          l13.enable(false);
          l12.enable(true);
        }
      
        if ((val & 0x02) == 0x02) {
          l22.enable(false);
          l21.enable(true);
        } else {
          l21.enable(false);
          l22.enable(true);
        }
      
        l31.enable(((val & 0x04) == 0x04));
      
        l41.enable(((val & 0x08) == 0x08));
      }
    }
  }
}
