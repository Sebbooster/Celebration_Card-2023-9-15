//Global Variables
int appWidth, appHeight;
int brightnessNumber=128, BRed=255, BGreen=255; //range:1-225
int sizeFont, size;
//
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float PImageX, PImageY, PImageWidth, PImageHeight;
float HDescX, HDescY, HDescWidth, HDescHeight;
float HTitleX, HTitleY, HTitleWidth, HTitleHeight;
//
PImage Pumpkin, BlackHole;
//
Boolean nightmode=false; //Note: clock can turn it on automatically
Boolean brightnessControl=false; //Note arrows control
//
color red=#ED3535, white=#FFFFFF, orange=#F58B19, dorange=#B75F00, HOC=#FFFFFF, blackInk=#000000;
//
String QButton = "X";
String HapHalTitle = "Happy Halloween!";
String HDesc = "Hello, Daniel Vimar! I want to let you know I am hosting a Halloween party, and that you are invited! The event will be happening on October 31st, and it will be going from 3:00 PM till 7:00 PM. Please bring snacks and drinks if you want to eat or drink before dinner, which will be provided. Please come in a Halloween costume! Thank you for reading, and I hope to see you soon!           -Sincerely, Sebastian.";
//
PFont QButtonFont, HalFont, HDescFont;
//
void setup() {
  //Fonts and Text Work
  QButtonFont = createFont("Arial", 55);
  HalFont = createFont("Blackadder ITC", 55);
  HDescFont = createFont("Harrington", 55);
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
  PImageX = appWidth*1/30;
  PImageY = appHeight*1/15;
  PImageWidth = appWidth*1/10;
  PImageHeight = appHeight*1/6;
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  //
  xRectQuit = appWidth*18/20;
  yRectQuit = appHeight*0;
  widthRectQuit = appWidth*1/10;
  heightRectQuit = appHeight*1/13;
  //
  HTitleX = appWidth*1/6;
  HTitleY = appHeight*1/8;
  HTitleWidth = appWidth*6/9;
  HTitleHeight = appHeight*1/8;
  //
  HDescX = appWidth*1/8;
  HDescY = appHeight*4/15;
  HDescWidth = appWidth*7/9;
  HDescHeight = appHeight*5/8;
  //
  Pumpkin = loadImage("../imagesUsed/Portrait/light-up-traditional-pumpkin-upd.jpg");
  BlackHole = loadImage("../imagesUsed/Landscape and Square/BlackHole.jpg");
  //
  //DIVs
  rect(PImageX, PImageY, PImageWidth, PImageHeight);
  rect(HTitleX, HTitleY, HTitleWidth, HTitleHeight);
  rect(HDescX, HDescY, HDescWidth, HDescHeight);
  //
} //End setup
//
void draw() {
  background(0);
  fill(dorange);
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  //
  rect(PImageX, PImageY, PImageWidth, PImageHeight);
  fill(white);
  rect(HTitleX, HTitleY, HTitleWidth, HTitleHeight);
  rect(HDescX, HDescY, HDescWidth, HDescHeight);
  rect( xRectQuit, yRectQuit, widthRectQuit, heightRectQuit );
  //Image
  //image(BlackHole, xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  image(Pumpkin, PImageX, PImageY, PImageWidth, PImageHeight);
  //hoverbuttoncolor
   if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) { //Button 1
    HOC = red;
    fill( HOC );
    rect( xRectQuit, yRectQuit, widthRectQuit, heightRectQuit );
    fill( white );
   }
  //Text
  //ActualTextPlacement
  fill(blackInk); //ink
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 20;
  textFont(QButtonFont, size);
  text(QButton, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //
  fill(orange); //ink
  noFill();
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 40;
  textFont(HalFont, size);
  text(HapHalTitle, HTitleX, HTitleY, HTitleWidth, HTitleHeight);
  //
  fill(orange); //ink
  noFill();
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 20;
  textFont(HDescFont, size);
  text(HDesc, HDescX, HDescY, HDescWidth, HDescHeight);
  //
  if ( brightnessControl==true ) //grey scale 1/2 tint
    if (brightnessNumber<1) {
      brightnessNumber=1;
    } else if (brightnessNumber>255) {
      brightnessNumber = 255;
    } else {
      noTint();
    }
  tint (255, brightnessNumber);
  //println (brightnessNumber);
  // if ( nightmode==true ) tint (64, 64, 40); //rey scale 1/2  tint (i.e. 128/256=1/2)
  if ( nightmode==true ) {
    tint (BRed, BGreen, 40);
    //println(nightmode);
  } else {
    
  }
  //Brightness color control
  //RED
  if (BRed<1) {
    BRed=1;
  } else if (BRed>255) {
    BRed=255;
  }
  //
  //GREEN
    if (BGreen<1) {
    BGreen=1;
  } else if (BGreen>255) {
    BGreen=255;
  }
  //
if (nightmode==true) tint(BRed, BGreen, 40);
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
