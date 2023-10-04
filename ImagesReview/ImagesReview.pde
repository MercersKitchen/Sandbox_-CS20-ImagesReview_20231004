//Global Variables
int appWidth, appHeight;
//
void setup()
{
  //fullScreen();
  size(800, 600);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Population of Variables
  backgroundX, backgroundY, backgroundWidth, backgroundHeight
  obiX, obiY, obiWidth, obiHeight
  //
  //DIVs as rect()s: images to be centered
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  rect(obiX, obiY, obiWidth, obiHeight); //landscape geometry
  rect(darthX, darthY, darthWidth, darthHeight); //portrait geometry
  //
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
//End MAIN Program
