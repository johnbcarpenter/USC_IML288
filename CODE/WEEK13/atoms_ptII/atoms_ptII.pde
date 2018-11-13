ClassThing[] class_things_array = new ClassThing[600];

void setup(){
  size(720, 720);
  
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
