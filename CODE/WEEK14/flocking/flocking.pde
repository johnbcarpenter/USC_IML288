// slightly adapted from daniel shiffman's flocking example
// https://processing.org/examples/flocking.html
// during class at USC's school of cinematic arts (IML288)
// for more, check out shiffman's book + web page: https://natureofcode.com

// in class, we edited flock.boid.render() + flock.boid.separation() to draw the lines

Flock flock;

void setup() {
  size(1280, 720, P3D);
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 1050; i++) {
    flock.addBoid(new Boid(random(width), random(height)));
  }
  background(0);
}

void draw() {
  //background(0);
  flock.run();
}

// Add a new boid into the System
void mousePressed() {
  flock.addBoid(new Boid(mouseX, mouseY));
}
