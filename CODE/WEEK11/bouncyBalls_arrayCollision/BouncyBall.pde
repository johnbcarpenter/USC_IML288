class BouncyBall {
  PVector loc; 
  PVector speed;
  float sz;
  color c;

  int len = 10;
  PVector [] trail = new PVector [len];
  
  boolean hit = false;

  BouncyBall() {
    loc = new PVector (random(width), random(height));
    speed = new PVector (random(2, 10), random(2, 10));

    sz = random(5, 100);
    c = color (random(255), random(255), random(255));
    
    for (int i = 0; i < trail.length; i++) {
      trail[i] = new PVector();
    }
  }

  void update() {
    loc.add(speed);

    if (loc.x > width-sz*0.5) {
      loc.x = width-sz*0.5;
      speed.x *= -1;
    }
    if (loc.x < 0 + sz*0.5) {
      loc.x = sz*0.5;
      speed.x *= -1;
    }
    if (loc.y > height-sz*0.5) {
      loc.y = height - sz*0.5;
      speed.y *= -1;
    }
    if (loc.y < 0+sz*0.5) {
      loc.y = sz*0.5;
      speed.y *= -1;
    }

    // update array positions
    for (int i = trail.length-1; i > 0; i--) {
      trail[i] = trail[i-1].copy();
    }
    trail[0] = new PVector (loc.x, loc.y);
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(loc.x, loc.y, sz, sz);

    for (int i = 0; i < trail.length; i++) {
      float alpha = 255-255*i/float(trail.length);
      if (hit) fill(c, alpha);
      else fill(255,alpha);
      ellipse(trail[i].x, trail[i].y, sz, sz);
    }
  }
}
