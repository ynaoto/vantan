void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  float a = map(mouseX, 0, width, -1, -0.5);
  for (int py = 0; py < height; py++) {
    float y = map(py, 0, height, 1, 0);
    float x = y * log(y);
    float px = map(x, 0, a, 0, width);
    point(px, py);
  } 
}

