float leftover=0.0; //runs on both methods here //Security Issues Solved by Encapsulation with Classes

void imageDraw (PImage image, int justification, int imageWidth, int imageHeight, float rectX, float rectY, float rectWidth, float rectHeight ) {
  //
  if ( imageWidth >= imageHeight ) { //Landscape or square
    //Note: Boolean widthdimension uses singleIF to rewrite rectY
    //BUG: need to use a return for width rewriting rectY and height rewriting rectX
    aspectRatio( justification, true, imageHeight, imageWidth, rectHeight, rectWidth );
  } else {
    aspectRatio( justification, false, imageWidth, imageHeight, rectWidth, rectHeight );
    
  } //End IF
  //Purpose: image()
  image( image, rectX, rectY, rectWidth, rectHeight );
  println ( image, rectX, rectY, rectWidth, rectHeight ); //Note: demonstrates hardrive image location
  //
} //End imageDraw
//
//NOTE: this abstracts the duplication of the IF-ELSE in Aspect Ratio
void aspectRatio(int justification, Boolean widthDimension, int smallImageDimension, int largeImageDimension, float rectX, float rectY, float smallRectDimension, float largeRectDimension) {
  float aspectRatio=0.0;
  float rectDimensionMemory=0.0; //Error Checking, CENTERING
  aspectRatio = float(smallImageDimension) / float(largeImageDimension); //Casting floats from ints to avoid /0
  rectDimensionMemory = smallRectDimension;
  smallRectDimension = aspectRatio * largeRectDimension; //
  /*Error Check of New Rect Width:
   - is it bigger than the old rectWidth, will not work
   - if it is bigger, decrease larger dimension by one percent until smaller dimenstion fits
   */
  if ( smallRectDimension > rectDimensionMemory ) { //Logically, this should never fail
    println("Error #1"); //Requires an error check
    exit(); //BUG, use loop() and noLoop() to start and stop draw(), as a review
  } //End WHILE
  //Right Justified, no leftover //Left Justified, division by 1
  if (justification==0) { //justidication
    justification=1; //CAUTION: no division by zero
    leftover = (rectDimensionMemory-smallRectDimension)/justification;
    justification=0;
  } else if ( justification==1 || justification==2 ) {
    leftover = (rectDimensionMemory-smallRectDimension)/justification;
  } else {
    println("Error on Justiciation Integer, Please Review"); //Note: this will catch the same error on next IF
    exit();
  } //End IF
  if ( widthDimension==true ) {
    if (justification==2) justification=1;
    rectY = rectY+leftover*justification;
  } else if ( widthDimension==false ) {
    println(leftover, justification);
    if (justification==2) justification=1;
    rectX = rectX+leftover*justification;
  } else {
    println("Changeing a Dimension Boolean ERROR, review");
    exit();
  }
} //End Aspect Ratio
//
//End subProgram Aspect Ratio
