//week15_01_circle_collision_class_Ball_new_Ball_display
void setup() {
  size(640, 360);
}
Ball ball =new Ball(100, 200, 20);
void draw(){
  ball.update();
  ball.display();
}
