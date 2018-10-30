class ManoloideThing {
  int line_ct;
  float diameter;
  float x,y;
  float stroke_wt;
  color[] colors;
  
  ManoloideThing(){
    line_ct = int(random(10,100));
    stroke_wt = 3.0*(1.0 - line_ct/float(100));
    diameter = random(30,300);
    x = random(width);
    y = random(height);
    
    colors = new color[line_ct];
    for (int i = 0; i < colors.length; i++){
      colors[i] = color(random(50,255), random(20), random(60,255));
    }
  }
  
  void display(){
    strokeWeight(stroke_wt);
    for (int i = 0; i < line_ct; i++){
      float theta = TWO_PI*i/float(line_ct);
      float end_x = x + diameter*cos(theta);
      float end_y = y + diameter*sin(theta);
      stroke(colors[i], 100);
      //stroke(color(random(255), random(255), random(255))); // crazy colors
      line (x,y, end_x, end_y);
    }
  } 
}
