PShape s;

void setup() {
  size(100, 100, P2D);
  s = createShape(RECT, 0, 0, 80, 80);
  s.disableStyle();
}

void draw() {
  fill(255, 0, 0);
  shape(s, 10, 10);
}

