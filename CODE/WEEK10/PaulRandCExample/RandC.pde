class RandC { //block
  float x; //fields
  float y;
  float diameter;
  color c;
  float x_speed;
  float y_speed;

  RandC() { // constructor ~ setup
    x = random(width);
    y = random(height);
    diameter = random(50, 100);
    c = color(random(255), random(255), random(255));

    x_speed = random(2, 10);
    y_speed = random(2, 10);
  }

  void update() {
    x += x_speed;
    y += y_speed;

    if (x >= width-diameter*0.5) {
      x_speed *= -1;
    }
    if (x <= 0 + diameter*0.5) {
      x_speed *= -1;
    }
    if (y >= height-diameter*0.5) {
      y_speed *= -1;
    }
    if (y <= 0+diameter*0.5) {
      y_speed*= -1;
    }
  }

  void display() { // method
    noFill();
    stroke(c);
    strokeWeight(10);
    arc(x, y, diameter, diameter, PI*0.2, TWO_PI*0.9);
  }
}
