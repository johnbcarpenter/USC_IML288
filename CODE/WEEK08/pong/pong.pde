float x, y;
float x_speed;
float y_speed;
float ball_diameter;

float paddle_x, paddle_y;
float paddle_x2, paddle_y2;
float paddle_w, paddle_h;

int left_score;
int right_score;

void setup(){
  size(1280,720);
  
  x = width*0.5;
  y = height*0.5;
  x_speed = 6.0;
  y_speed = 4.0;
  ball_diameter = 40.0;
  
  paddle_x = 40.0;
  paddle_y = height*0.5;
  paddle_x2 = width - 40.0;
  paddle_y2 = height*0.5;
  paddle_w = 10.0;
  paddle_h = 100.0;
  
  rectMode(CENTER);
  left_score = 0;
  right_score = 0;
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
  // checking right
  if (x >= paddle_x2 - ball_diameter*0.5 &&
      x < width &&
      abs(y - paddle_y2) < paddle_h*0.5){
    x = paddle_x2 - ball_diameter*0.5;
    x_speed = -x_speed;
  }
  if(x > width && x < width+x_speed){
    left_score++;
  }
  //checking left
  if (x <= paddle_x + ball_diameter*0.5 &&
      x > 0 &&
      abs(y - paddle_y) < paddle_h*0.5){
    x = paddle_x + ball_diameter*0.5;
    x_speed = -x_speed;
  }
  if(x < 0 && x > x_speed){
    right_score++; 
  }

  rect(paddle_x, paddle_y, paddle_w, paddle_h);
  rect(paddle_x2, paddle_y2, paddle_w, paddle_h);
  
  textSize(200);
  text(left_score, width*0.5 - 200, 200);
  text(right_score, width*0.5 + 200, 200);
}

void keyPressed(){
  // left paddle
  if (key == 'q'){
    paddle_y -= 40.0;
  }
  else if (key == 'a'){
    paddle_y += 40.0;
  }
  // right paddle
  if (key == 'p'){
    paddle_y2 -= 40.0;
  }
  else if (key == 'l'){
    paddle_y2 += 40.0;
  }
  else if (key == ' '){
    x = width*0.5;
    y = height*0.5;
    x_speed = random(4.0, 8.0);
    y_speed = random(4.0, 8.0);
  }
}
