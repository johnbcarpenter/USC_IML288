class GraphicThing {
  float x, y;
  float diameter;
  float gray;
  float stroke_gray;
  
  GraphicThing(float _x, float _y){ // constructor
    x = _x;
    y = _y;
    diameter = random(10,15);
    gray = random(255);
    stroke_gray = random(255);
  }
  
  void drawself(){
    noStroke();
    fill(gray);
    ellipse(x,y,diameter,diameter);
    
    stroke(stroke_gray);
    line(x-10,y-10,x,y);
  }
}
