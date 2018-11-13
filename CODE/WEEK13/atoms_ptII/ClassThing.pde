class ClassThing {
  float x;
  float y;
  float radius;
  color c;
  int ring_ct = int(random(1, 30));
  color[] ring_colors = new color[ring_ct];

  ClassThing() {
    x = random(width);
    y = random(height);
    radius = random(10, 40);
    c = color(random(255), random(20), random(200));

    for (int i = 0; i < ring_colors.length; i++) {
      ring_colors[i] = color(random(255), random(50), random(255));
    }
  }

  void display() {
    // central ellipse (aka atom center)
    noStroke();
    fill(c, 100);
    ellipse(x, y, radius, radius);

    // rings
    noFill();
    pushMatrix();
    translate(x, y);
    for (int i = 0; i < ring_ct; i++) { // ring_ct == ring_colors.length
      stroke(ring_colors[i], 100);
      rotate(TWO_PI/float(ring_ct));
      ellipse(0, 0, radius*2.0, radius*0.5);
    }
    popMatrix();
  }
}
