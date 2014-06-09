float x = 0;
float y = 0;
float vx = 1.2;
float vy = 1;

void setup() {
  size(300, 300);
}

void draw() {
  //background(50);
  ellipse(x, y, 20, 20);
  x += vx;
  if (x < 0 || 300 < x) {
    vx *= -1;
  }
  y += vy;
  if (y < 0 || 300 < y) {
    vy *= -1;
  }
}
