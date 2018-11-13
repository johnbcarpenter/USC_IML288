class BouncyBall {
  float x;
  float y;
  float x_speed;
  float y_speed;
  float sz;
  color c;

  int len = 10;
  float[] trail_x = new float[len];
  float[] trail_y = new float[len];

  BouncyBall() {
    x = random(width);
    y = random(height);
    x_speed = random(2, 10);
    y_speed = random(2, 10);
    sz = random(5, 100);
    c = color (random(255), random(255), random(255));
  }

  void update() {
    x += x_speed;
    y += y_speed;

    if (x > width-sz*0.5) {
      x = width-sz*0.5;
      x_speed *= -1;
    }
    if (x < 0 + sz*0.5) {
      x = sz*0.5;
      x_speed *= -1;
    }
    if (y > height-sz*0.5) {
      y = height - sz*0.5;
      y_speed *= -1;
    }
    if (y < 0+sz*0.5) {
      y = sz*0.5;
      y_speed *= -1;
    }

    // update array positions
    for (int i = trail_x.length-1; i > 0; i--) {
      trail_x[i] = trail_x[i-1];
      trail_y[i] = trail_y[i-1];
    }
    trail_x[0] = x;
    trail_y[0] = y;
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, sz, sz);

    for (int i = 0; i < trail_x.length; i++) {
      float alpha = 255-255*i/float(trail_x.length);
      fill(c, alpha);
      ellipse(trail_x[i], trail_y[i], sz, sz);
    }
  }
}
