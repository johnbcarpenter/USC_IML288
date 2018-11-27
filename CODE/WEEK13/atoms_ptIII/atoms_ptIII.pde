// WIP sketch based on the atoms_ptII demo in class for USC IML288
// https://github.com/johnbcarpenter/USC_IML288
// taking the 2D system we created in class -> 3D
// pdf export based on https://processing.org/reference/libraries/pdf/index.html
// shader work from https://processing.org/tutorials/pshader/
// may run slow... if so, reduce the ATOM_COUNT from 500

// pdf library for pdf export
import processing.pdf.*;
boolean save_frame = false;

//total atom count in the system
int ATOM_COUNT = 500;

// basic point + line shader from https://processing.org/tutorials/pshader/
PShader point_shader;
PShader line_shader;

// main array to store all the atoms
Atom[] class_things_array = new Atom[ATOM_COUNT];

void setup() {
  size(1280, 720, P3D);

  // add all the atoms to the class_things_array array
  for (int i = 0; i < class_things_array.length; i++) {
    class_things_array[i] = new Atom();
  }
  sphereDetail(9); // controls the facades on the sphere, gets performance 

  point_shader = loadShader("pointfrag.glsl", "pointvert.glsl");
  line_shader = loadShader("linefrag.glsl", "linevert.glsl");

  //hint(DISABLE_DEPTH_MASK); // use w additive blending
}

void draw() {
  if (save_frame) // triggered by key press "r", runs 1x with screen display
    beginRaw(PDF, "ATOM-###.pdf");

  background(0);
  //blendMode(ADD); // use for additive blending

  // translate the atoms to the center of the screen so we can rotate the system
  translate(width*0.5, height*0.5);
  rotateY(millis()*0.00005); // rotate based on time passed since app start
  
  lights(); //for the 3D spheres
  
  //set the shaders
  shader(point_shader, POINTS);
  shader(line_shader, LINES);

  // loop through and display all the atoms
  for (int i = 0; i < class_things_array.length; i++) {
    class_things_array[i].display();
  }

  // save out the pdf / turn off pdf save
  if (save_frame) { 
    endRaw();
    save_frame = false;
  }
}

// INTERACTIONS
void keyPressed() {
  if (key == 'r') {
    save_frame = true;
  }
}
