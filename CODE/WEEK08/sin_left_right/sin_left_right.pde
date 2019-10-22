float el_x = 0;
float el_y;
float el_spd = 2.0;

void setup(){
  size(720,720);
  el_y = height*0.5;
}

void draw(){
  
  ellipse(el_x, el_y + 200*sin(5.0*PI*el_x/width), 20,20);
  
  el_x += el_spd;
}
