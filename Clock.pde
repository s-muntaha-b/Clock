PImage clockBg, clockBase;
float x1, y1;
float handOne = 0;
float handTwo = 0;
float lengthOne = 300;
float lengthTwo = 150;
int lastSec = 0;
int lastMin = 0;

  void setup(){
  size(1000, 1000, P2D);
  clockBg = loadImage("clockBg.png"); // Free to use image from https://www.pxfuel.com/en/free-photo-xnwsf
  clockBg.resize(1000,1000);
  clockBase = loadImage("clockBase.png");
  clockBase.resize(700,700);
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  
 }
 void draw(){
  background(clockBg);
  image(clockBase, x1, y1);
  
  pushMatrix();
  translate(x1, y1);
  rotate(radians(handOne));
  line(0, 0, lengthOne, 0);
  ellipse(lengthOne, 0, 10, 10);
  popMatrix();
  
  pushMatrix();
  translate(x1, y1);
  rotate(radians(handTwo));
  line(0, 0,lengthTwo, 0);
  ellipse(lengthTwo, 0, 10, 10);
  popMatrix();
  
  int s = second();
  int m = minute();
  
  if (s != lastSec) {
   handOne+= 6;
   lastSec = s;
  }
  if (m != lastMin) {
   handTwo+= 6;
   lastMin = m;
   
  handTwo+= minute();  
  }
}
