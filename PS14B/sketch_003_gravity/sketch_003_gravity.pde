float x = 0, y = 0;
float vx = 1, vy = 1;
float ax = 0, ay = 0.2;

void setup() {
  size(500, 500);
}

void draw() {
  background(255, 255, 0);
  ellipse(x, y, 20, 20);
  x += vx; y += vy;
  if (x < 0) {
    x = -x;
    vx *= -1;
  } else if (width < x) {
    x = width - (x - width);
    vx *= -1;
  } else if (y < 0) {
    y = -y;
    vy *= -1;
  } else if (height < y) {
    y = height - (y - height);
    vy *= -1;
  }
  vx += ax; vy += ay;
}

