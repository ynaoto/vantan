class Mover {
  float x, y;
  float r;
  Mover() {
    x = random(width);
    y = random(height);
    r = random(10, 100);
  }
  void draw() {
    ellipse(x, y, 2*r, 2*r);
  }
  boolean isHit(float px, float py) {
    float dx = px - x;
    float dy = py - y;
    return dx*dx + dy*dy < r*r;
  }
}

Mover mover;

void setup() {
  size(300, 300);
  mover = new Mover();
}

void draw() {
  background(255);
  color c = color(0, 255, 0);
  if (mover.isHit(mouseX, mouseY)) {
    c = color(255, 0, 0);
  }
  fill(c);
  mover.draw();
}

