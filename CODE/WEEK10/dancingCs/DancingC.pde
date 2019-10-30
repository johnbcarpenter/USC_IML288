class DancingC { // class block of code

  float x; // variables aka fields for the class
  float y;
  
  float x_speed;
  float y_speed;
  
  float r; // red 0-255
  float g; // green
  float b; // blue
  
  float diameter;
  
  float rotation;
  float rotation_speed;
  
  DancingC(float _x, float _y){ // constructor (initialize variables, like setup)
    x = _x;
    y = _y;
    
    x_speed = random(2,10);
    y_speed = random(2,10);
    
    r = random(255);
    g = random(255);
    b = random(255);
    
    diameter = random(50, 300);
    
    rotation = random(TWO_PI); // 0 -> TWO_PI
    rotation_speed = 0.05*random(PI);
  }
  
  void update(){
    x += x_speed;
    y += y_speed;
    
    if (x > width - diameter*0.5){
      x = width - diameter*0.5;
      x_speed *= -1;
    }
    if (x < diameter*0.5){
      x = diameter*0.5;
      x_speed *= -1;
    }
    if (y > height - diameter*0.5){
       y = height - diameter*0.5; 
       y_speed *= -1;
    }
    if (y < diameter*0.5){
      y = diameter*0.5;
      y_speed *= -1;
    }
    
    rotation += rotation_speed;
  }
  
  void drawSelf(){
    strokeWeight(diameter*0.2);
    stroke(r,g,b);
    noFill();
    pushMatrix();
    translate(x,y);
    rotate(rotation);
    arc(0,0, diameter, diameter, PI/6.0, PI/6.0 + (TWO_PI - PI/3.0));
    popMatrix();
    //ellipse(x,y, diameter,diameter);
  }
}
