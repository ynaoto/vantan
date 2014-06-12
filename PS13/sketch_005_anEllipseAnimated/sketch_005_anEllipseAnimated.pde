int r = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255, 255, 255);
  ellipse(250, 250, r, 400);
  r++;
  if (500 < r) {
    r = 0;
  }
}

