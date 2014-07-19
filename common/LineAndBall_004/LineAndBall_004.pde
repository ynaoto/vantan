float xh = 70;
float yh = 70;
float xo = 255;
float yo = 55;
float xf = xh + (xo - xh)/2;
float yf = yh + (yo - yh)/2;

void setup() {
  size(300, 300);
}

void draw() {
  background(255, 0, 0);
  line(xh, yh, xo, yo);
  ellipse(xf, yf, 10, 10);
}

