class Atom {
  float x;
  float y;
  float z;
  float radius;
  color c;
  int ring_ct = int(random(2, 12));
  color[] ring_colors = new color[ring_ct];
  float[] ring_radii = new float[ring_ct];
  float[] ring_speeds = new float[ring_ct];
  float theta_offset = random(TWO_PI);
  float theta_speed = random(0.1, 1.0);

  Atom() {
    x = random(-height*0.75, height*0.75);
    y = random(-height*0.5, height*0.5);
    z = random(-height*0.75, height*0.75);
    radius = random(10, 40);
    c = color(random(250), random(20), random(200));

    for (int i = 0; i < ring_colors.length; i++) {
      ring_colors[i] = color(random(255), random(50), random(255));
      ring_colors[i]*=1.5;
      ring_radii[i] = random(1.0, 2.0);
      ring_speeds[i] = random(0.2, 1.0);
    }
  }

  void display() {
    noFill();
    pushMatrix();
    translate(x, y, z);
    noStroke();
    fill(c);
    sphere(radius*0.5);
    rotateX(PI*0.5);
    rotateZ(theta_offset + millis()*0.001*theta_speed);
    noFill();
    for (int i = 0; i < ring_ct; i++) { // ring_ct == ring_colors.length
      pushMatrix();
      stroke(ring_colors[i], 190);
      rotateY(i*TWO_PI/float(ring_ct));
      rotateX(millis()*0.0001*ring_speeds[i]);
      rotateZ(millis()*0.001*ring_speeds[i]);
      
      strokeWeight(ring_speeds[i]);
      ellipse(0, 0, radius*ring_radii[i], radius*ring_radii[i]); // orbit
      strokeWeight(radius*0.07*ring_radii[i]);
      stroke(ring_colors[i]);
      point(radius*ring_radii[i]*0.5, 0); // electron
      popMatrix();
    }
    popMatrix();
  }
}
