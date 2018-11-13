class ClassThing {
  
  float x;
  float y;
  float radius;
  color c;
  color[] ring_colors = new color[3];
  
  ClassThing(){
    x = random(width);
    y = random(height);
    radius = random(10,40);
    c = color(random(255), random(20), random(200));
    
    //for (int i = 0; i < ring_colors.length; i++){
    //  ring_colors[i] = color(random(255), random(50), random(255));
    //} // the same as vvv
    ring_colors[0] = color(random(255), random(50), random(255));
    ring_colors[1] = color(random(255), random(50), random(255));
    ring_colors[2] = color(random(255), random(50), random(255));
  }
  
  void display(){
    noStroke();
    fill(c, 100);
    ellipse(x,y,radius,radius);
    
    noFill();
    pushMatrix();
    translate(x,y);
    stroke(ring_colors[0], 100);
    ellipse(0,0,radius*2.0,radius*0.5);
    
    stroke(ring_colors[1], 100);
    rotate(TWO_PI*0.3333);
    ellipse(0,0,radius*2.0,radius*0.5);
    
    stroke(ring_colors[2], 100);
    rotate(TWO_PI*0.3333);
    ellipse(0,0,radius*2.0,radius*0.5);
    popMatrix();
  }  
  
}
