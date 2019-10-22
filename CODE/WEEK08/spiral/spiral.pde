float rad;

void setup(){
  size(720,720);
  
  imageMode(CENTER);
  rad = 0;
}

void draw(){
  //background(200);
  float x = height*0.5 + rad*cos(millis()*0.001);
  float y = height*0.5 + rad*sin(millis()*0.001);
  noFill();
  ellipse(x, y, 100,100);
  stroke(0,20);
  line(width*0.5, height*0.5, x,y);
  
  rad += 0.2;
}
