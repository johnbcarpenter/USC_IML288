class BouncyBall {
  float x, y;
  float x_speed, y_speed;
  float diameter;
  float gray;

  BouncyBall() {
    x = width*0.5;
    y = height*0.5;
    x_speed = random(-10,10);
    y_speed = random(-10,10);
    diameter = random(6,30);
    
    gray = random(255);
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
  }
  
  void drawself(){
    noStroke();
    fill(gray);
    ellipse(x,y,diameter,diameter);
  }
}
