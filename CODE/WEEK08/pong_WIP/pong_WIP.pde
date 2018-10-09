float x, y;
float x_speed;
float y_speed;
float ball_diameter;

float paddle_x, paddle_y;
float paddle_w, paddle_h;

void setup(){
  size(1280,720);
  
  x = width*0.5;
  y = height*0.5;
  x_speed = 6.0;
  y_speed = 4.0;
  ball_diameter = 40.0;
  
  paddle_x = 40.0;
  paddle_y = height*0.5;
  paddle_w = 10.0;
  paddle_h = 100.0;
  
  rectMode(CENTER);
}

void draw(){
  background(0);
  ellipse(x, y, ball_diameter, ball_diameter);
  
  x += x_speed;
  y += y_speed;
  
  if (y > height - ball_diameter*0.5){
    y = height - ball_diameter*0.5;
    y_speed = -y_speed;
  }
  else if (y < 0 + ball_diameter*0.5){
    y = 0 + ball_diameter*0.5;
    y_speed = -y_speed;
  }
  
  if (x > width - ball_diameter*0.5){
    x = width - ball_diameter*0.5;
    x_speed = -x_speed;
  }
  if (x <= paddle_x + ball_diameter*0.5 &&
      x > 0 &&
      y - paddle_y < paddle_h*0.5 && // abs(y - paddle_y) < paddle_h*0.5
      y + paddle_y > paddle_h*0.5){
    x = paddle_x + ball_diameter*0.5;
    x_speed = -x_speed;
  }

  rect(paddle_x, paddle_y, paddle_w, paddle_h);
}

void keyPressed(){
  if (key == 'q'){
    paddle_y -= 40.0;
  }
  else if (key == 'a'){
    paddle_y += 40.0;
  }
}
