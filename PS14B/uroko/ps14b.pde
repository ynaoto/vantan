float x = 10;
float y = 50;
float vx = 1;

void setup() {
  size(500, 500);
}

void draw() {
  int i, j;
  background(x, 255, 255);
  for (i = 0; i < 500; i += 20) {
    for (j = 0; j < 500; j += 10) {
      fill(x, i, j);
      ellipse(x + j, y + i, 20, 20);
    }
  }
  x += vx;
  if (500 < x) {
    vx *= -1;
  }
  if (x < 0) {
    vx *= -1;
  }
}
