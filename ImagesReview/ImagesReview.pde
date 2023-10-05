//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float obiX, obiY, obiWidth, obiHeight;
float darthX, darthY, darthWidth, darthHeight;
PImage backgroundPic, obiPic, darthPic;
int backgroundPicWidth, backgroundPicHeight, obiPicWidth, obiPicHeight, darthPicWidth, darthPicHeight;
Boolean nightmode, brightnessControl; //Reminder tint()
int brightnessNumber=128; //Range: 1-255
//
void setup()
{
  //fullScreen();
  size(800, 600);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Population of Variables
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth-1;
  backgroundHeight = appHeight-1;
  obiX = appWidth*1/10;
  obiY = appHeight*1/7;
  obiWidth = appWidth*1/4;
  obiHeight = appHeight*1/4.5;
  darthX = appWidth*3/4;
  darthY = appHeight*6/10;
  darthWidth = appWidth*1/8;
  darthHeight = appHeight*1/3;
  backgroundPic = loadImage("../imagesUsed/pebble-beach.jpg");
  obiPic = loadImage("../imagesUsed/Landscape & Square Images/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
  darthPic = loadImage("../imagesUsed/Portrait/10-star-wars-darth-vader-portrait-wallpaper-1-325x485.jpg");
  backgroundPicWidth = 860;
  backgroundPicHeight = 580;
  obiPicWidth = 800;
  obiPicHeight = 600;
  darthPicWidth = 325;
  darthPicHeight = 485;
  //
  //DIVs as rect()s: images to be centered
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  rect(obiX, obiY, obiWidth, obiHeight); //landscape geometry
  rect(darthX, darthY, darthWidth, darthHeight); //portrait geometry
  //
  //Aspect Ratio Calculations
  float aspectRatio=0.0;
  int picWidth, picHeight, rectWidth, rectHeight;
  picWidth = ;
  picHeight = ;
  rectWidth = ;
  rectHeight = ;
  if ( picWidth >= picHeight ) { //Landscape or square
    aspectRatio = picHeight / picWidth; //CAUTION: int to float, casting
    picWidth = rectWidth; //1:1
    picHeight = aspectRatio * rectWidth; //Aspect ratio, rewite smaller dimesion
    //Error Check
    if ( picHeight > rectHeight ) {
      println("Problem");
    }
    return picHeight;
  } else { //Portrait
    aspectRatio = picWidth / picHeight; //CAUTION: int to float, casting
    picHeight = rectHeight; //1:1
    picWidth = aspectRatio * rectHeight; //Aspect ratio, rewite smaller dimesion
    //Error Check
    if ( picWidth > rectWidth ) {
      println("Problem");
    }
    return picWidth;
  }
  //if ( rectWidth >= rectHeight ) {} else {}
  //
} //End setup
//
void draw()
{
  //
  //Mathematics for Brightness Control & Night Mode
  //
  //Background Image is not Aspect Ratio
  image( backgroundPic, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //When Darth in Landscape & Obi in Portrait, not aspect ratio
  image( darthPic, obiX, obiY, obiWidth, obiHeight);
  image ( obiPic, darthX, darthY, darthWidth, darthHeight);
  //
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
