//week14_07_cute_cursor_miku_cursor
PImage imgCute, imgMiku;
void setup(){
  size(500, 500);
  imgCute = loadImage("cute.gif");
  imgMiku = loadImage("miku.gif");
  cursor(imgMiku);
}
void draw(){
  background(#FFFFF2);
  if(frameCount%120==0) cursor(imgCute);
  if(frameCount%120==60) cursor(imgMiku);
  
}
