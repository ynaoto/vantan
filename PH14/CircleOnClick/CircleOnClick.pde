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
}

Mover mover;

void setup() {
  size(500, 500);
  mover = new Mover();
}

void draw() {
  background(255);
  mover.draw();
}

void mousePressed() {
  mover.x = mouseX;
  mover.y = mouseY;
}
