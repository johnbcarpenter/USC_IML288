PFont sanserif;

void setup(){
  size(720,720);
  sanserif = loadFont("SansSerif-48.vlw");
  textFont(sanserif);
  textAlign(RIGHT);
}

void draw(){
  background(0);
  fill(255,0,0);
  text("The lamp once out \n" + 
       "Cool stars enter \n" + 
       "The window frame.", 580, 200);
  fill(255,0,0,180);
  text("- Natsume Soseki", 680, 500);
}
