//week15_04_circle_collision_cos_sin_vector_N_N2_M_M2_swap
void setup() {
  size(640, 360);
}
Ball ball =new Ball(100, 200, 20);
Ball ball2 = new Ball(300, 200, 60);
void draw(){
  background(51);
  if(ball.checkCollision(ball2) ) fill(#FFAAAA);
  else fill(255);
  ball.update();
  ball.display();
  ball2.update();
  ball2.display();
}
