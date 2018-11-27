class Atom { // block
  //fields
  float x; // xyz location of the atom
  float y;
  float z;
  float radius; // of the sphere
  color c; // color of the main sphere
  int ring_ct = int(random(2, 12)); //number of orditing rings
  color[] ring_colors = new color[ring_ct]; // array to keep track of each ring stroke color
  float[] ring_radii = new float[ring_ct]; // array to keep track of each ring radius
  float[] ring_speeds = new float[ring_ct]; // array to keep track of each ring rotation speed
  float theta_offset = random(TWO_PI); // an offset value so the rings are out of phase
  float theta_speed = random(0.1, 1.0); // overall rotation speed of the atom

  Atom() { // constructor
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

  // methods
  void display() { // all the draw commands for the atom
    noFill();
    
    // pushmatrix, translate, and rotate for the atom
    pushMatrix();
    translate(x, y, z);
    
    // draw the main sphere
    noStroke();
    fill(c);
    sphere(radius*0.5);
    
    //rotate the orbit rings
    rotateX(PI*0.5);
    rotateZ(theta_offset + millis()*0.001*theta_speed);
    
    //draw the rings
    noFill();
    for (int i = 0; i < ring_ct; i++) { // ring_ct == ring_colors.length
      pushMatrix(); // another pushmatrix for the rotation of each orbit ring rotation
      rotateY(i*TWO_PI/float(ring_ct));
      rotateX(millis()*0.0001*ring_speeds[i]);
      rotateZ(millis()*0.001*ring_speeds[i]);
      // draw the orbit ring
      stroke(ring_colors[i], 190);
      strokeWeight(ring_speeds[i]);
      ellipse(0, 0, radius*ring_radii[i], radius*ring_radii[i]); 
      
      // draw a point (electron) on the orbit 
      strokeWeight(radius*0.07*ring_radii[i]);
      stroke(ring_colors[i]);
      point(radius*ring_radii[i]*0.5, 0); // electron
      popMatrix();
    }
    popMatrix();
  }
}
