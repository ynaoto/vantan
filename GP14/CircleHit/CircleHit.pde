class Region {
  float x, y, r;
  Region() {
    x = random(width);
    y = random(height);
    r = random(10, 50);
  }
  void draw() {
    ellipse(x, y, 2*r, 2*r);
  }
  boolean isHit(float px, float py) {
    float dx = px - x;
    float dy = py - y;
    return dx*dx+dy*dy < r*r;
  }
}

Region target;

void setup() {
  size(300, 300);
  target = new Region();
}

void draw() {
  background(255);
  color c = color(0, 255, 0);
  if (target.isHit(mouseX, mouseY)) {
    c = color(255, 0, 0);
  }
  fill(c);
  target.draw();
}
