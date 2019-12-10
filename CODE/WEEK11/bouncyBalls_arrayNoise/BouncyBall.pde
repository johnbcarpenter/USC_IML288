class BouncyBall {
  float x;
  float y;
  float x_speed;
  float y_speed;
  float sz;
  color c;
  float perlin_offset;

  int len = 100;
  float[] trail_x = new float[len];
  float[] trail_y = new float[len];

  BouncyBall() {
    x = width*0.5; //random(width);
    y = height*0.5; //random(height);
    x_speed = random(-3, 3);
    y_speed = random(-3, 3);
    sz = random(5, 20);
    c = color (random(255), random(255), random(255));
    perlin_offset = random(TWO_PI);
  }

  void update() {
    x += x_speed;
    y += y_speed;
    
    // ADD PERLIN NOISE TO MOVEMENT
    float time_f = millis()*0.0002; 
    float noise_float = 20.5*noise(x*0.002+time_f, y*0.002+time_f);
    float p_x = 4.5*sin(x*0.001+noise_float + perlin_offset);
    float p_y = 4.7*cos(y*0.001+noise_float + perlin_offset);
    x += p_x;
    y += p_y;

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
