//week12_04_bezier_for_t_t0_0_many_t
void setup() {
  size(400, 400);
}
PVector p0 =new PVector(120, 80);
PVector p1 =new PVector(320, 20);
PVector p2 =new PVector(320, 300);
PVector p3 =new PVector(120, 300);
float t0 = 0.0;
ArrayList<Ball> balls = new ArrayList<ball>();
void draw() {
  background(255);
  noFill();
  stroke(255, 102, 0);
  line(340, 80, 40, 40);
  line(360, 360, 60, 320);
  stroke(0, 0, 0);
  bezier(120, 80, 320, 20, 320, 300, 120, 300);
  for (Ball ball : balls) {
    ball.draw();
  }
  if (frameCount%20==0) balls.add(new Ball(p0, p1, p2, p3) );
}
void mouseDragged() {
  t0 += 0.01 * (mouseX-pmouseX);
}
