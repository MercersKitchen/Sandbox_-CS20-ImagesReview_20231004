 void imageSetup() {
} //End imageSetup
//
void imageDraw (PImage image, int imageWidth, int imageHeight, float rectX, float rectY, float rectWidth, float rectHeight ) {
  image ( obiPic, darthX, darthY, darthWidth, darthHeight);
  //
  float aspectRatio=0.0;
  float rectDimensionMemory; //Error Checking
  if ( imageWidth >= imageHeight ) { //Landscape or square
  //Student Direction
  //Repeat this based on Portrait Image in Landscape Rect
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
      exit();
    } //End WHILE
  } //End IF
  //Purpose: image()
  image( image, rectX, rectX, rectWidth, rectHeight );
  println( rectX, rectX, rectWidth, rectHeight, imageWidth, imageHeight );
  //
} //End imageDraw

/*Aspect Ratio Calculations
 
 
 aspectRatio = picHeight / picWidth; //CAUTION: int to float, casting
 
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
 */
