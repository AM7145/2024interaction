//week14_08_big_cursor_imageMode_image_imageMode
//希望不只用16x16 or 32x32 要更大
PImage imgBigCute, imgBigMiku, imgCursor;
void setup(){
  size(500, 500);
  imgBigCute = loadImage("bigCute.gif");
  imgBigMiku = loadImage("bigMiku.gif");
  imgCursor = imgBigMiku;
}
void draw(){
  background(#FFFFF2);
  imageMode(CENTER);
  image(imgCursor, mouseX, mouseY);
  if(frameCount%120==0) imgCursor=imgBigCute;
  if(frameCount%120==60) imgCursor = imgBigMiku;
}
