void setup() {
  size(300, 300);
  background(255);
}

void draw() {
  float cx = width / 2;
  float cy = height / 2;
  float x = random(width);
  float y = random(height);
  float dx = x - cx;
  float dy = y - cy;
  float r = 100;
  if (dx*dx + dy*dy < r*r) {
    point(x, y);
  } 
}
