// inspired by https://massmoca.org/sol-lewitt/

// write up your own set of rules, and generate the work on paper + with code:
// choose 5 points at random on a "wall"
// draw 20 lines from each of those points to other random points on the wall

size(1024, 768);

for (int j = 0; j < 5; j++) { // choose 5 points
  float x = random(width); // at random on a "wall"
  float y = random(height); // at random on a "wall"
  for (int i = 0; i < 20; i++) { // draw 20 lines 
    line(x, y, random(width), random(height)); // from each of those points to other random points on the wall
  }
}
