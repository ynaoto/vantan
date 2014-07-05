class Mover {
  float x, y;
  float r;
  color c;
  Mover() {
    x = random(width);
    y = random(height);
    r = random(10, 100);
    c = color(random(10, 255), 255, 255);
  }
  void draw() {
    fill(c);
    ellipse(x, y, 2*r, 2*r);
  }
}

Mover mover;

void setup() {
  size(300, 300);
  colorMode(HSB);
  mover = new Mover();
}

void draw() {
  background(100, 255, 255);
  mover.draw();
}

void mousePressed() {
  println("mousePressed");
  mover.x = mouseX;
  mover.y = mouseY;
}

void mouseDragged() {
  println("mouseDragged");
}

void mouseReleased() {
  println("mouseReleased");
}

