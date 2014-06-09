float r = 0;
float v = 1;

void setup() {
  size(300, 300);
}

void draw() {
  background(50);
  ellipse(150, 150, r, r);
  r += v;
  if (r < 0 || 300 < r) {
    v *= -1;
  }
}

