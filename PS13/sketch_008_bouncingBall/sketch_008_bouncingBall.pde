int x = 0, y = 0;
int vx = 3, vy = 1;

void setup() {
  size(500, 500);
}

void draw() {
  background(255, 255, 255);
  stroke(3);
  ellipse(x, y, 20, 20);
  x += vx; y += vy;
  if (x < 0 || width < x) {
    vx *= -1;
  }
  if (y < 0 || height < y) {
    vy *= -1;
  }
}

