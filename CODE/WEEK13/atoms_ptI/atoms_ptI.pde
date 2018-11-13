ClassThing[] class_things_array = new ClassThing[1000];

void setup(){
  size(1280, 720);
  
  for (int i = 0; i < class_things_array.length; i++){
    class_things_array[i] = new ClassThing(); 
  }
}

void draw(){
  background(255);
  
  for (int i = 0; i < class_things_array.length; i++){
    class_things_array[i].display(); 
  }
}
