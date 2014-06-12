int x = 0, y = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255, 255, 255);
  strokeWeight(3);
  ellipse(x, y, 20, 20);
  x++; y++;
//  x = x + 1;
//  x += 1;
  if (width < x) {
    x = 0;
  }
  if (height < y) {
    y = 0;
  }
}

