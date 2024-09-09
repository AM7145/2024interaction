//week01_4_if_mousePressed_line_mouseX_mouseY_pmouseX_pmosueY
void setup(){
  size(500,500);
}

void draw(){
  if(mousePressed) line(mouseX,mouseY,
                        pmouseX,pmouseY);
}
