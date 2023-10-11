/* Aspect Ratio Check: use truth table to ensure all variations of geoemtry
 can be accounted for by algorithm
 */
//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float obiX, obiY, obiWidth, obiHeight;
float darthX, darthY, darthWidth, darthHeight;
PImage backgroundPic, obiPic, darthPic;
int backgroundPicWidth, backgroundPicHeight, obiPicWidth, obiPicHeight, darthPicWidth, darthPicHeight;
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
  //
  String imageFolderPathway = "../../../imagesUsed/";
  String pebbleBeachImage = "pebble-beach.jpg";
  String landscapeImages = "Landscape & Square Images/";
  String portraitImage = "Portrait/";
  String obi = "Obi-wan-star-wars-jedi-23864621-800-600.jpg";
  String darth = "10-star-wars-darth-vader-portrait-wallpaper-1-325x485.jpg";
  backgroundPic = loadImage( imageFolderPathway + pebbleBeachImage );
  obiPic = loadImage( imageFolderPathway + landscapeImages + obi );
  darthPic = loadImage( imageFolderPathway + portraitImage + darth );
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

  //
} //End setup
//
void draw()
{
  //
  //Mathematics for Brightness Control & Night Mode
  //
  //Background Image is not Aspect Ratio
  //background (255); //Small BUG, 1 pixel
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  image( backgroundPic, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //When Darth in Landscape & Obi in Portrait, not aspect ratio
  //To get Aspect Ratio: the larger dimension is the size of the rect, smaller dimension is calculated
  rect(obiX, obiY, obiWidth, obiHeight); //landscape geometry
  imageDraw( darthPic, darthPicWidth, darthPicHeight, obiX, obiY, obiWidth, obiHeight );
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
