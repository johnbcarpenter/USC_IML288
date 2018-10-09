/* Create a video loop composition 
with two images: one that rotates, 
and one that moves according to a 
sinusoidal function */

PImage pigeon;
PImage hat;

float pigeon_x, pigeon_y;
float hat_x, hat_y;

void setup(){
  size(1280, 720);
  
  pigeon = loadImage ("pigeon.png");
  hat = loadImage ("hat.png");
  
  pigeon_x = width*0.5;
  pigeon_y = height*0.5;
  hat_x = width*0.5;
  hat_y = height*0.25;

  imageMode(CENTER);
}

void draw(){
  background(255);
  
  // draw the pigeon
  pushMatrix();
  translate (pigeon_x, pigeon_y);
  rotate(millis()*0.001);
  image(pigeon, 0,0, 187,250);
  popMatrix();
  // update the pigeon values
  pigeon_x += 10.0*cos(millis()*0.001);
  
  // draw the hat
  pushMatrix();
  translate (hat_x, hat_y);
  image(hat, 0,0);
  popMatrix();
  // update the hat values
  hat_y += 2.0*sin(millis()*0.001);
  
}
