class ManoThing { // block
  float x, y; //fields
  float line_count;
  float diameter;
  float original_diameter;
  float rotation_speed;
  float phase;
  color c;

  ManoThing() { // constructor
    x = random(width);
    y = random(height);
    line_count = random(60,220);
    diameter = random(100,200);
    original_diameter = diameter;
    rotation_speed = random(0.0001,0.001);
    phase = random(0,TWO_PI);
    c = color(random(255),random(255), random(255));
  }
  
  void update(){
    diameter = original_diameter+200*sin(phase+millis()*0.001);
  }

  void display() {
    strokeWeight(1);
    stroke(c, 120);
    pushMatrix();
    translate(x, y);
    rotate(millis()*rotation_speed);
    for (float theta = 0; theta < TWO_PI; theta += TWO_PI/line_count) {
      float line_end_x = diameter*cos(theta);
      float line_end_y = diameter*sin(theta);
      line(0,0,line_end_x,line_end_y);
      //ellipse(line_end_x,line_end_y, 10,10);
    }
    popMatrix();
  }
}
