  float blink=100;
  boolean lukker;
  
  import processing.sound.*;
SoundFile file;
  
void setup(){
  size(1000,500);
   rectMode(CENTER);
}

void draw(){
   for(int i = 0; i < 1; i++){
 hus(random(height),random(width));
  }}

void hus(float x, float y){
    if (blink <= random(100) && !lukker){
      blink += 0.1;
  } else if (blink > 0 && lukker){
      blink -= 0.1;
  } else {
      lukker = false;
 }
  strokeWeight(5);
   fill(random(255),random(255),random(255));
   translate(0,0);
  //rect(y,x, blink,blink);
  curve(random(width),random(height),random(width), random(height),
  random(width),random(height),random(width),random(height));
}

void mousePressed(){
     file = new SoundFile(this, "01 Kærligheden Brænder (Party Version).mp3");
   file.play();
  }