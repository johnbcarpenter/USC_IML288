class BouncyBall {
  float x, y;
  float x_speed, y_speed;
  float diameter;
  float gray;
  
  float[] xs;
  float[] ys;

  BouncyBall() {
    x = width*0.5;
    y = height*0.5;
    x_speed = random(-10,10);
    y_speed = random(-10,10);
    
    xs = new float[10];
    ys = new float[10];
    for(int i = 0; i < xs.length; i++){
      xs[i] = x;
      ys[i] = y;
    }
    
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
    
    for (int i = xs.length-1; i > 0; i--){
      xs[i] = xs[i-1];
      ys[i] = ys[i-1];
    }
    xs[0] = x;
    ys[0] = y;
  }
  
  void drawself(){
    noStroke();
    fill(gray);
    ellipse(x,y,diameter,diameter);
    
    for (int i = 0; i < xs.length; i++){
      float a = map(i, 0, xs.length, 255,0);
      fill(gray,a);
      float d = map(i, 0,xs.length, diameter, 2);
      ellipse(xs[i], ys[i], d,d);
    }
  }
}
