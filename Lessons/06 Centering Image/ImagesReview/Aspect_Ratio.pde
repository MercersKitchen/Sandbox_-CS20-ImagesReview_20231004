void imageDraw (PImage image, int imageWidth, int imageHeight, float rectX, float rectY, float rectWidth, float rectHeight ) {
  //
  float aspectRatio=0.0;
  float rectDimensionMemory=0.0, leftover=0.0; //Error Checking, CENTERING
  if ( imageWidth >= imageHeight ) { //Landscape or square
    //Student Direction
    //Based on Aspect Ratio: imageWidth/imageHeight = rectWidth/rectHeight
    //Note: imageWidth/imageHeight = AR, AR*rectWidth = rectHeight in Aspect Ratio
    aspectRatio = float(imageHeight) / float(imageWidth); //Casting floats from ints to avoid /0
    //rectWidth = imageHeight; //1:1 Ratio, computer does this automatically for lager side
    rectDimensionMemory = rectHeight;
    rectHeight = aspectRatio * rectWidth; //
    /*Error Check of New Rect Width:
     - is it bigger than the old rectWidth, will not work
     - if it is bigger, decrease larger dimension by one percent until smaller dimenstion fits
     */
    if ( rectHeight > rectDimensionMemory ) { //Logically, this should never fail
      println("Error #1"); //Requires an error check
      exit(); //BUG, use loop() and noLoop() to start and stop draw(), as a review
    } //End WHILE
    //Right Justified, no leftover or /1
    leftover = (rectDimensionMemory-rectHeight)/2;
    //Left Justified, no division or *0
    rectY = rectY+leftover;
  } else {
    //Based on Aspect Ratio: imageWidth/imageHeight = rectWidth/rectHeight
    //Note: imageWidth/imageHeight = AR, AR*rectHeight = rectWidth in Aspect Ratio
    aspectRatio = float(imageWidth) / float(imageHeight); //Casting floats from ints to avoid /0
    //rectHeight = imageHeight; //1:1 Ratio, computer does this automatically for lager side
    rectDimensionMemory = rectWidth;
    rectWidth = aspectRatio * rectHeight; //
    /*Error Check of New Rect Width:
     - is it bigger than the old rectWidth, will not work
     - if it is bigger, decrease larger dimension by one percent until smaller dimenstion fits
     */
    if ( rectWidth > rectDimensionMemory ) { //Logically, this should never fail
      println("Error #1"); //Requires an error check
      exit(); //BUG, use loop() and noLoop() to start and stop draw(), as a review
    } //End WHILE
    leftover = (rectDimensionMemory-rectWidth)/2; //Right Justified, no leftover or /1 //Left Justified, no division or *0
    rectX = rectX+leftover; //*0
  } //End IF
  //Purpose: image()
  image( image, rectX, rectY, rectWidth, rectHeight );
  println ( image ); //Note: demonstrates hardrive image location
  //
} //End imageDraw
