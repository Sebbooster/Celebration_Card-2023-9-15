//Global Variables
  int appWidth, appHeight;
  float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
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
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  xRect2 = appWidth*1/4;
  yRect2 = appHeight*1/4;
  widthRect2 = appWidth*1/2;
  heightRect2 = appHeight*1/2;
  //
} //End setup
//
void draw() {
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRect2, yRect2, widthRect2, heightRect2);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: "+mouseX, "Mouse Y: "+mouseY);
  //
  //xRect2, yRect2, widthRect2, heightRect2
  if ( mouseX>xRect2 &&mouseX<xRect2+widthRect2 &&mouseY>yRect2 &&mouseY<yRect2+heightRect2 ) println("Button Activated"); 
  //
} //End mousePressed
//
//End MAIN Program
