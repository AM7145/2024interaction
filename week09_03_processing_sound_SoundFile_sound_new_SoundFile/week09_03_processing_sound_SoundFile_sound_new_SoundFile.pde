//week09_03_processing_sound_SoundFile_sound_new_SoundFile
import processing.sound.*;
SoundFile sound;

void setup(){
  size(500, 500);
  sound = new SoundFile(this, "In Game Music.mp3");
  sound.play();//撥放一次
  sound.loop();//一直迴圈撥放
}
void draw(){

}
