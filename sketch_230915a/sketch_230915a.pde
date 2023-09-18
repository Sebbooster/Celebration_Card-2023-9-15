//Global Variables
  int appWidth, appHeight;
  float xRect, yRect, widthRect, heightRect;
  float xRect2, yRect2, widthRect2, heightRect2;
//
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "Display Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(810, 540);
  appWidth = width;
  appHeight = height;
  //
  //Population
  xRect = appWidth*0;
  yRect = appHeight*0;
  widthRect = appWidth-1;
  heightRect = appHeight-1;
  xRect2 = appWidth*1/2;
  yRect2 = appHeight*1/2;
  widthRect2 = appWidth-1;
  heightRect2 = appHeight-1;
  //
} //End setup
//
void draw() {
  rect(xRect, yRect, widthRect, heightRect);
  rect(xRect2, yRect2, widthRect2, heightRect2);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
