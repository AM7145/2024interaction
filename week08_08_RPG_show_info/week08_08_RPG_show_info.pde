//week08_08_RPG_show_info
int [][] floor ={ 
  {4, 4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 4, 4, 4, 5, 4, 1,19, 3,22, 3,22, 9, 2, 2, 2, 9,16, 1, 5},
  {4, 4, 4, 4, 5, 4, 1, 2, 3,18, 3, 9, 9, 9, 2, 2, 2, 9, 1, 5},
  {4, 4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4,4, 4, 4, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 4, 4, 4, 5, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5},
  {4, 4, 4, 4, 5, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5},
  {4, 4, 4, 4, 5, 4, 2, 2, 2, 2, 2, 2, 21, 2, 2, 2, 2, 2, 2, 5},
};
PImage img, user;
PImage [] fimg = new PImage[40];
void setup() {
  size(640, 480);
  img = loadImage("640x480.png");
  user = loadImage("15.png");//玩家角色
  for(int i=1; i<=22; i++) fimg[i] = loadImage(i+".png");
}
int userI=12, userJ=15;
void draw() {
  //background(img);
  for(int i=0;i<floor.length;i++){
    for(int j=0;j<20;j++){
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, 16, 16);
  textSize(30);
  text("Level: "+level, 16, 90);
  textSize(20);
  text("Hp:  "+hp,  16,140);
  text("Attack:  "+attack,  16,170);
  text("Defense:  "+defense,  16,200);
  text("Magic Defense: "+magic, 16, 230);
  text("Exp:  "+exp,  16,260);
  text("Coins:  "+coin,  16,290);
  image(user, userJ*32, userI*32);
  if(gameOver) background(0, 255, 0);
}
int level = 1, hp= 2693, attack = 14, defense = 16,magic=10, exp=72,coin = 72;

boolean gameOver = false;
void keyPressed(){
  int newI = userI, newJ = userJ;
  if(keyCode==RIGHT) newJ++;
  if(keyCode==LEFT) newJ--;
  if(keyCode==UP) newI--;
  if(keyCode==DOWN) newI++;
  if(floor[newI][newJ]!=4 && floor[newI][newJ]!=5){
    userI = newI;
    userJ = newJ;
    if(floor[userI][userJ]==21) gameOver = true;  
    floor[userI][userJ] = 2;
  }
}
