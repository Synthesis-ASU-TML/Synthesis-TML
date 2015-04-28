
int graphX, graphY;
int graphW, graphH;
int graphPoints = 1;
int[] graphData = new int[1];
int[] graphPrevData = new int[1];
int graphMinY, graphMaxY;
int graphTickX, graphIncX, graphTickY;
color graphLineColor = color(250);
color graphBgColor = color(150);
color graphAxisColor = color(200);
boolean graphDrawn = false;

int numValidGrEntries = 0;
int numPrevGrEntries = 0;


void CreateGraph(int x, int y, int w, int h, int n)
{
  graphX = x;
  graphY = y;
  graphW = w;
  graphH = h;
  graphPoints = n;
  graphData = expand(graphData, n);
  graphPrevData = expand(graphPrevData, n);
}


void ConfigGraph(int miny, int maxy, int tickx, int incx, int ticky)
{
  int i, xw, y;
  String l;
  
  graphMinY = miny;
  graphMaxY = maxy;
  graphTickX = tickx;
  graphIncX = incx;
  graphTickY = ticky;
  
  // Draw the graph area background
  fill(graphBgColor);
  rect(graphX-1, graphY-1, graphW+1, graphH+1);
  
  // Draw the X-axis
  stroke(graphAxisColor);
  noSmooth();
  line(graphX-1, graphY+graphH, graphX+graphW, graphY+graphH);
  
  // Draw the Y-axis
  line(graphX-1, graphY, graphX-1, graphY+graphH);
  
  // Label the Y-axis
  fill(graphAxisColor);
  i = 0;
  y = miny;
  smooth();
  while (y <= maxy) {
    l = str(y);
    textFont(fontA, 12);
    xw = (int) textWidth(l);
    text(l, graphX - xw - 1, graphY + graphH - y + 3);
    y += graphTickY;
    i++;
  }
}


void PushGraphData(int val)
{
  int newVal = val;
  
  if (newVal > graphMaxY) newVal = graphMaxY;
  if (newVal < graphMinY) newVal = graphMinY;
  
  if (numValidGrEntries < graphPoints) {
    graphData[numValidGrEntries] = newVal;
    ++numValidGrEntries;
  } else {
    for (int i=1; i<graphPoints; i++) {
      graphData[i - 1] = graphData[i];
    }
    graphData[graphPoints-1] = newVal;
  }
}


void ResetGraph()
{
  // Erase previous graph
  if (graphDrawn) {
    stroke(graphBgColor);
    _drawGraphLine(graphPrevData, numPrevGrEntries);
  }
  graphDrawn = false;
  numValidGrEntries = 0;
  numPrevGrEntries = 0;
}


void DrawGraph()
{
  // Erase previous graph
  if (graphDrawn) {
    stroke(graphBgColor);
    _drawGraphLine(graphPrevData, numPrevGrEntries);
  }
  
  // Draw new graph
  stroke(graphLineColor);
  _drawGraphLine(graphData, numValidGrEntries);
  
  // Setup to erase this line next time
  for (int i=0; i<graphPoints; i++) {
    graphPrevData[i] = graphData[i];
  }
  numPrevGrEntries = numValidGrEntries;
  graphDrawn = true;
}


void _drawGraphLine(int[] gd, int n)
{
  if ((n == 0) || (n == 1)) return;
  
  int xinc = graphW / (graphPoints - 1);
  int xs, ys, xe, ye;
  
  noSmooth();
  xs = graphX + 1;
  ys = graphY + (graphH - 1) - gd[0];
  for (int i=1; i<n; i++) {
    xe = graphX + 1 + (i * xinc);
    ye = graphY + (graphH - 1) - gd[i];
    line(xs, ys, xe, ye);
    xs = xe;
    ys = ye;
  }
}
