GraphicThing[] things;
int grid_ct = 40; // this changes the grid count (total # of objects)

void setup() {
  size(720, 720);

  int total_ct = grid_ct*grid_ct;
  things = new GraphicThing[total_ct];

  float grid_sz = width/grid_ct;
  int current_thing = 0;
  float border = grid_sz*0.5;
  for (int ov_ct = 0; ov_ct < grid_ct; ov_ct++) {
    for (int up_ct = 0; up_ct < grid_ct; up_ct++) {
      float x = border + ov_ct * grid_sz;
      float y = border + up_ct * grid_sz;
      things[current_thing] = new GraphicThing(x, y);
      current_thing++;
    }
  }
}


void draw() {
  background(200);
  for (int i = 0; i < things.length; i++) {
    things[i].drawself();
  }
}
