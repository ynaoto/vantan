float xh = 70;
float yh = 70;
float xo = 255;
float yo = 55;

void setup() {
  size(300, 300);
}

void draw() {
  background(255, 0, 0);
  line(xh, yh, xo, yo);
  float xf = xh + 0.2*(xo - xh);
  float yf = yh + 0.2*(yo - yh);
  ellipse(xf, yf, 10, 10);
}

