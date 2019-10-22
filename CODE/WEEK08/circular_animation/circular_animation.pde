void setup(){
  size(720,720);
}

void draw(){
  background(200);
  noFill();
  stroke(0, 50);
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  for (float theta = 0; theta < TWO_PI; theta += PI*0.01){
    float rad = 200.0 + 100*sin(millis()*0.001);
    float el_rad = 200 + 50*sin(millis()*0.002);
    float y = rad*sin(theta);
    float x = rad*cos(theta);
    ellipse(x,y, el_rad, el_rad);
  }
  popMatrix();
  
}
