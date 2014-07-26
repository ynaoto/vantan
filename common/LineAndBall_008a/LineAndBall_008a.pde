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
  float a = map(mouseX, 0, width, 0, 1);
  float r = map(mouseY, 0, height, 1, 50);
  float xf = xh + a*(xo - xh);
  float yf = yh + a*(yo - yh);
  ellipse(xf, yf, r, r);
}

