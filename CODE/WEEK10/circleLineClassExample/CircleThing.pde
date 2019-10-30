class CircleThing {
  float x;
  float y;
  float radius;
  float theta_inc;
  float tiny_circle_diam;
  float rotation;
  float rotation_speed;
  
  // constructor
  CircleThing(float _x, float _y, float _radius){
    x = _x;
    y = _y;
    
    radius = _radius;
    
    theta_inc = random(PI*0.001, PI*0.1);
    tiny_circle_diam = random(5, 100);
    
    rotation = 0;
    rotation_speed = random (0.001, 0.01);
  }
  
  void updateAndDrawSelf(){
    // update
    rotation += rotation_speed;
    
    // draw
    stroke(255);
    
    pushMatrix();
    translate(x,y);
    rotate(rotation);
    
    for (float theta = 0; theta < TWO_PI; theta += theta_inc){
      float circle_x = radius*cos(theta);
      float circle_y = radius*sin(theta);
      float circle_x2 = radius*0.4*cos(theta);
      float circle_y2 = radius*0.4*sin(theta);
      
      stroke(255,100);
      line(circle_x2,circle_y2, circle_x, circle_y);
      
      fill(255,100);
      noStroke();
      ellipse(circle_x, circle_y, tiny_circle_diam,tiny_circle_diam);
    }
    ellipse(0,0, 10,10);
    
    popMatrix();
  }
  
}
