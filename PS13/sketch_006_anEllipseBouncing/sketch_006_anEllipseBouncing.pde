int r = 0;
int v = 1;

void setup() {
  size(500, 500);
}

void draw() {
  background(255, 255, 255);
  ellipse(250, 250, r, 400);
  r += v;
  if (r < 0 || 500 < r) {
    v *= -1;
  }
}

