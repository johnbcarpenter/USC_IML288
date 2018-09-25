void setup(){
  size(720,720);
}
void draw(){
  float top_x = 100;
  float top_y = 100;
  float rect_width = 300;
  float rect_height = 300;
  
  if (mouseX > top_x && mouseX < top_x + rect_width &&
   mouseY > top_y && mouseY < top_y + rect_height){
    fill(255,0,0);
  } else {
    fill(255);
  }
  
  rect(top_x,top_y,rect_width,rect_height);
}
