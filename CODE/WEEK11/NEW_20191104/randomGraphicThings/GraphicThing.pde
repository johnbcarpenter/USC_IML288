class GraphicThing {
  float x, y;
  float diameter;
  
  GraphicThing(float _x, float _y){ // constructor
    x = _x;
    y = _y;
    diameter = random(10,15);
  }
  
  void drawself(){
    ellipse(x,y,diameter,diameter);
  }
}
