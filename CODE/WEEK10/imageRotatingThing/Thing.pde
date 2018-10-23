class Thing { // block
  float x, y; //fields
  float line_count;
  float diameter;
  float original_diameter;
  float rotation_speed;
  float phase;
  color c;

  Thing() { // constructor
    x = random(width);
    y = random(height);
    line_count = random(60,220);
    diameter = random(300,600);
    original_diameter = diameter;
    rotation_speed = random(0.0001,0.001);
    phase = random(0,TWO_PI);
    c = color(random(255),random(255), random(255));
  }
  
  void update(){
    diameter = original_diameter+200*sin(phase+millis()*0.001);
  }

  void display() {
    strokeWeight(2);
    stroke(c, 120);
    noFill();
    pushMatrix();
    translate(x, y);
    rotate(millis()*rotation_speed);
    tint(c);
    image(purple,0,0,diameter,diameter);
    popMatrix();
  }
}
