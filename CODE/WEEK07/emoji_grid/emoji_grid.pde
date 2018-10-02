PImage heart;
PImage star;

void setup() {
  size(720, 720);
  heart = loadImage("heart.jpeg");
  star = loadImage("star.jpeg");
}

void draw() {
  int grid_sz = 40;
  int counter = 0;
  for (int x = 0; x < width; x += grid_sz) {
    for (int y = 0; y < height; y += grid_sz) {
      if (counter % 2 == 0){
        image(heart,x,y,grid_sz,grid_sz);
      } else {
        image(star,x,y,grid_sz,grid_sz);
      }
      counter++;
    }
    counter++;
  }
}
