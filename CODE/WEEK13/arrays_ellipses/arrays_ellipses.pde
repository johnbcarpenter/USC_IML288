float[] x_positions = new float [100];
float[] y_positions = new float[100];

color[] colors = new color[100];
float[] radii = new float[100];

void setup() {
  size(1280, 720);

  for (int i = 0; i < x_positions.length; i++) {
    x_positions[i] = random(width);
    y_positions[i] = random(height);
    radii[i] = random(1,20);
    colors[i] = color(random(255), random(25), random(200));
  }
}

void draw() {
  background(0);

  for (int i = 0; i < x_positions.length; i++) {
    float x = x_positions[i];
    float y = y_positions[i];
    fill(colors[i]);
    ellipse(x, y, radii[i], radii[i]);
  }
}
