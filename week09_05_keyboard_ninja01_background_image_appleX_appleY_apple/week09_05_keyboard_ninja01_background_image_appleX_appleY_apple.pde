//week09_05_keyboard_ninja01_background_image_appleX_appleY_appleVX_appleVY_g
PImage board;
void setup() {
  size(600, 400);
  board = loadImage("board.png");
}
float appleX = 100, appleY = 500, appleVX = 3, appleVY = -30;
void draw() {
  background(board);
  fill(255, 0, 0);
  ellipse(appleX, appleY, 80, 80);
  appleX += appleVX;//照著運動的速度，X往右移
  appleY += appleVY;//照著運動的速度，Y也會移動
  appleVY += 0.98;//0.98 gravity重力加速度
  if (appleX >600) {
    appleX = 100; appleY = 500; appleVX = 5; appleVY = -30;
  }
}
