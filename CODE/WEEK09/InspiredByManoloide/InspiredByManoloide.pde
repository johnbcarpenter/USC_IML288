float tile_sz = 40.0;
color pink = color(255, 0, 230);
color black = color(0, 0, 0);
color purple = color(100, 0, 255);

void setup() {
  size(720, 720, P3D);
  noLoop();
}

void draw() {
  for (float x = 0; x < width; x += tile_sz) {
    for (float y = 0; y < height; y += tile_sz) {
      drawTile(x, y);
    }
  }
}

void drawTile(float tile_x, float tile_y) {
  // determine the tile color
  float rdm = random(0, 1.0);
  if (rdm < 0.4) fill(pink);
  else if (rdm >= 0.4 && rdm < 0.6) fill(black);
  else if (rdm >= 0.6) fill(purple);
  stroke(255);
  rect(tile_x, tile_y, tile_sz, tile_sz);

  // draw a circle or line
  float tile_cx = tile_x + tile_sz*0.5;
  float tile_cy = tile_y + tile_sz*0.5;

  float rdm2 = random(0, 1);
  if (rdm2 <= 0.5) { // draw a circle
    float radius = random(0, tile_sz);
    noFill();
    ellipse(tile_cx, tile_cy, radius, radius);
  } else { // draw a line
    if (rdm2 > 0.5 && rdm2 <= 0.7)
      line(tile_x, tile_cy, tile_x+tile_sz, tile_cy);
    if (rdm2 > 0.7 && rdm2 <= 0.9) 
      line(tile_x, tile_y, tile_x +tile_sz, tile_y+tile_sz);
  }
  noStroke();
  beginShape(TRIANGLES);
  fill(255, random(255));
  vertex(tile_x, tile_y);
  fill(255,random(255));
  vertex(tile_x+tile_sz, tile_y);
  fill(255,random(255));
  vertex(tile_x, tile_y+tile_sz);
  endShape();

  //draw the little circle in the middle
  fill(255);
  noStroke();
  ellipse(tile_cx, tile_cy, tile_sz*0.2, tile_sz*0.2);
}
