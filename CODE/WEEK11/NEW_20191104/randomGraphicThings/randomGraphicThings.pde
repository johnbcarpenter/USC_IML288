GraphicThing[] things;

void setup(){
  size(720,720);
  
  things = new GraphicThing[100];
  for (int i = 0; i < things.length; i++){
    things[i] = new GraphicThing(random(width), random(height));
  }
}


void draw(){
  background(200);
  for (int i = 0; i < things.length; i++){
    things[i].drawself();
  }
}
