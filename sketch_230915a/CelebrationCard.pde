//Global Variables
  int appWidth, appHeight;
  float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
  float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
  float PImageX, PImageY, PImageWidth, PImageHeight;
  PImage Pumpkin;
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
  PImageX = appWidth*1/25;
  PImageY = appHeight*1/4;
  PImageWidth = appWidth*1/5;
  PImageHeight = appHeight*1/3;
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  xRectQuit = appWidth*1/4;
  yRectQuit = appHeight*1/4;
  widthRectQuit = appWidth*1/2;
  heightRectQuit = appHeight*1/2;
  Pumpkin = loadImage("../imagesUsed/Portrait/light-up-traditional-pumpkin-upd.jpg");
  //
  //DIVs
  rect(PImageX, PImageY, PImageWidth, PImageHeight);
  //
} //End setup
//
void draw() {
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(PImageX, PImageY, PImageWidth, PImageHeight);
  //Image
  image(Pumpkin, PImageX, PImageY, PImageWidth, PImageHeight);
  //
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
  if ( mouseX>xRectQuit &&mouseX<xRectQuit+widthRectQuit &&mouseY>yRectQuit &&mouseY<yRectQuit+heightRectQuit ) exit(); 
  //
} //End mousePressed
//
//End MAIN Program
