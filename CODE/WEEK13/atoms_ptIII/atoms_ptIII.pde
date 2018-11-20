// WIP sketch based on the atoms_ptII demo in class for USC IML288
// https://github.com/johnbcarpenter/USC_IML288
// taking the 2D system we created in class -> 3D
// pdf export based on https://processing.org/reference/libraries/pdf/index.html
// shader work from https://processing.org/tutorials/pshader/
// may run slow... if so, reduce the ATOM_COUNT from 500

import processing.pdf.*;
boolean save_frame = false;

int ATOM_COUNT = 500;

// basic point + line shader from https://processing.org/tutorials/pshader/
PShader point_shader;
PShader line_shader;

Atom[] class_things_array = new Atom[ATOM_COUNT];

void setup() {
  size(1280, 720, P3D);

  for (int i = 0; i < class_things_array.length; i++) {
    class_things_array[i] = new Atom();
  }
  sphereDetail(9);

  point_shader = loadShader("pointfrag.glsl", "pointvert.glsl");
  line_shader = loadShader("linefrag.glsl", "linevert.glsl");

  //hint(DISABLE_DEPTH_MASK); // use w additive blending
}

void draw() {
  if (save_frame)
    beginRaw(PDF, "ATOM-###.pdf");

  background(0);
  //blendMode(ADD); // use for additive blending
  translate(width*0.5, height*0.5);
  rotateY(millis()*0.00005);
  lights();
  shader(point_shader, POINTS);
  shader(line_shader, LINES);
  for (int i = 0; i < class_things_array.length; i++) {
    class_things_array[i].display();
  }
  
    if (save_frame) {
    endRaw();
    save_frame = false;
  }
}

void keyPressed() {
  if (key == 'r') {
    save_frame = true;
  }
}
