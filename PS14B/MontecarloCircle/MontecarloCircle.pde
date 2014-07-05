void setup() {
  size(300, 300);
  background(255);
}

void draw() {
  float x = random(width);
  float y = random(height);
  x -= width/2;
  y -= height/2;
  float r = 100;
  if (x*x + y*y < r*r) {
    x += width/2;
    y += height/2;
    point(x, y);
  }
}

