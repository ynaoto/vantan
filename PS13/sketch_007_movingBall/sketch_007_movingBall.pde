int x = 0, y = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255, 255, 255);
  stroke(3);
  ellipse(x, y, 20, 20);
  x++; y++;
  if (width < x) {
    x = 0;
  }
  if (height < y) {
    y = 0;
  }
}

