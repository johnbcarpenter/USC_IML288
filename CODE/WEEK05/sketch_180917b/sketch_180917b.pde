size(720,720);
rectMode(CENTER);

for (int i = 0; i < 1000; i++){
  float x = random(width);
  float y = random(height);
  //println(x + ", " + y);
  float sz = random(10,50);
  
  if (i%2 == 0){
    ellipse(x,y,sz,sz);
  } else {
    pushMatrix();
    translate(x,y);
    float angle = random(TWO_PI);
    rotate(angle);
    rect(0,0,sz,sz);
    popMatrix();
  }
}
