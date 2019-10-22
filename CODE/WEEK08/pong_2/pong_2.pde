float ball_x;
float ball_y;
float ball_diam;
float x_speed;
float y_speed;

float left_pad_x;
float left_pad_y;
float right_pad_x;
float right_pad_y;
float paddle_w; // width
float paddle_h; // height
float paddle_speed;

int left_score;
int right_score;
boolean is_there_a_score;
PFont mono;

void setup() {
  size(1280, 720);

  ball_x = width/2.0;
  ball_y = height/2.0;
  ball_diam = 100.0;
  x_speed = random(-10.0, 10.0);
  if (abs(x_speed) < 4.0) {
    x_speed = 4.0;
  }
  y_speed = random(-10.0, 10.0);
  if (abs(y_speed) < 4.0) {
    y_speed = 4.0;
  }

  left_pad_x = 50.0;
  left_pad_y = height*0.5;
  right_pad_x = width - 50.0;
  right_pad_y = height*0.5;
  paddle_w = 20.0;
  paddle_h = 100.0;
  paddle_speed = 20.0;

  rectMode(CENTER);
  
  is_there_a_score = false;
  left_score = 0;
  right_score = 0;
  mono = loadFont("Monospaced-64.vlw");
  textFont(mono);
}

void draw() {
  background(200);
  ellipse(ball_x, ball_y, ball_diam, ball_diam);

  rect(left_pad_x, left_pad_y, paddle_w, paddle_h);
  rect(right_pad_x, right_pad_y, paddle_w, paddle_h);

  ball_x += x_speed;
  ball_y += y_speed;

  // bounce off the screen bottom
  if (ball_y >= height - ball_diam*0.5) {
    ball_y = height - ball_diam*0.5;
    y_speed *= -1;
  }
  // bounce off the screen bottom
  if (ball_y <= ball_diam*0.5) {
    ball_y = ball_diam*0.5;
    y_speed *= -1;
  }

  // bounce the ball off the right paddle
  if (ball_x >= right_pad_x - ball_diam*0.5 && ball_x < width) {
    if (abs(ball_y - right_pad_y) <= paddle_h*0.5) {
      ball_x = right_pad_x - ball_diam*0.5;
      x_speed = -x_speed;
    }
  }

  // bounce the ball off the left paddle
  if (ball_x <= left_pad_x + ball_diam*0.5 && ball_x > 0) {
    if (abs(ball_y - left_pad_y) <= paddle_h*0.5) {
      ball_x = left_pad_x + ball_diam*0.5;
      x_speed = -x_speed;
    }
  }
  
  // score keeping
  if (is_there_a_score == false && ball_x > width){
    left_score += 1; 
    is_there_a_score = true;
  }
  if (is_there_a_score == false && ball_x < 0){
    right_score += 1; 
    is_there_a_score = true;
  }
  
  text(left_score, 200,100);
  text(right_score, width-200,100);
}

void keyPressed() {
  if (key == 'q') {
    left_pad_y -= paddle_speed;
  }
  if (key == 'z') {
    left_pad_y += paddle_speed;
  }
  if (key == 'o') {
    right_pad_y -= paddle_speed;
  }
  if (key == 'm') {
    right_pad_y += paddle_speed;
  }
  if (key == ' ') {
    is_there_a_score = false;
    
    // set ball back to center
    ball_x = width*0.5;
    ball_y = height*0.5;
    // generate a new x + y speed
    x_speed = random(-10.0, 10.0);
    if (abs(x_speed) < 4.0) {
      x_speed = 4.0;
    }
    y_speed = random(-10.0, 10.0);
    if (abs(y_speed) < 4.0) {
      y_speed = 4.0;
    }
  }
}
