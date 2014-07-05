class Mover {
  float x, y;
  float r;
  boolean isDragging;
  Mover() {
    x = random(width);
    y = random(height);
    r = random(10, 100);
    isDragging = false;
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
  if (mover.isDragging) {
    c = color(255, 0, 0);
  }
  fill(c);
  mover.draw();
}

void mousePressed() {
  println("mousePressed");
  if (mover.isHit(mouseX, mouseY)) {
    mover.isDragging = true;
  }
}

void mouseDragged() {
  println("mouseDragged");
  if (mover.isDragging) {
    mover.x = mouseX;
    mover.y = mouseY;
  }
}

void mouseReleased() {
  println("mouseReleased");
  if (mover.isDragging) {
    mover.isDragging = false;
  }
}

