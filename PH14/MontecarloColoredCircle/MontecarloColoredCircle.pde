void setup() {
  size(300, 300);
  background(255);
  colorMode(HSB);
}

void draw() {
  float cx = width / 2;
  float cy = height / 2;
  float x = random(width);
  float y = random(height);
  float dx = x - cx;
  float dy = y - cy;
  float r = 100;
  float d2 = dx*dx + dy*dy;
  if (d2 < r*r) {
    stroke(map(d2, 0, r*r, 0, 255), 255, 255);
    point(x, y);
  } 
}
