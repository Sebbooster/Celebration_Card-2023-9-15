//Global Variables
  int appWidth, appHeight;
  float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
  float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
  float PImageX, PImageY, PImageWidth, PImageHeight;
  PImage Pumpkin;
  Boolean nightmode=false; //Note: clock can turn it on automatically
  Boolean brightnessControl=false; //Note arrows control
  int brightnessNumber=128; //range:1-225
  color red=#ED3535, white=#FFFFFF;
  String QButton = "X";
  PFont QButtonFont;
  int sizeFont, size;
//
void setup() {
  //Fonts and Text Work
  QButtonFont = createFont("Onyx", 55);
  //
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
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  //
  xRectQuit = appWidth*11/12;
  yRectQuit = appHeight*1/350;
  widthRectQuit = appWidth*1/10;
  heightRectQuit = appHeight*1/13;
  //
  Pumpkin = loadImage("../imagesUsed/Portrait/light-up-traditional-pumpkin-upd.jpg");
  //
  //DIVs
  rect(PImageX, PImageY, PImageWidth, PImageHeight);
  //
} //End setup
//
void draw() {
  //ActualTextPlacement
    fill(white); //ink
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 20;
  textFont(QButtonFont, size);
  text(QButton, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
   fill(red);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //
  rect(PImageX, PImageY, PImageWidth, PImageHeight);
  //Image
  image(Pumpkin, PImageX, PImageY, PImageWidth, PImageHeight);
  //
    if ( brightnessControl==true ) //grey scale 1/2 tint
  if (brightnessNumber<1) { 
    brightnessNumber=1;
} else if (brightnessNumber>255) {
brightnessNumber = 255;
} else {
}
tint (255, brightnessNumber);
//println (brightnessNumber);
 // if ( nightmode==true ) tint (64, 64, 40); //rey scale 1/2  tint (i.e. 128/256=1/2)
  if ( nightmode==true ) { 
    tint (81, 177, 82);
    //println(nightmode);
  } else {
    noTint();
  }
  //
} //End draw
//
void keyPressed() {
    if ( key=='n'|| key=='N') { 
  if (nightmode==true) { //Nightmode, basic control is boolean
  nightmode = false;
} else {
  nightmode = true;
  }
}
//
  //Brightness: ARROWS ACTIVATE BRIGHTNESSCONTROL, NEVER OFF
//NOTE: NIGHTMODE CAN TURN OFF
  if (key==CODED && keyCode==UP || keyCode==DOWN ) {
  brightnessControl=true;
  if (key==CODED && keyCode==UP) brightnessNumber++ ;
  if (key==CODED && keyCode==DOWN) brightnessNumber-- ;
  }
  //
} //End keyPressed
//
void mousePressed() {

  if ( mouseX>xRectQuit &&mouseX<xRectQuit+widthRectQuit &&mouseY>yRectQuit &&mouseY<yRectQuit+heightRectQuit ) exit(); 
  //
} //End mousePressed
//
//End MAIN Program
