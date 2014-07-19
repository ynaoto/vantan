float xh = 70;
float yh = 70;
float xo = 255;
float yo = 55;
float xf = xh + xo;
float yf = yh + yo;

void setup() {
  size(300, 300);
}

void draw() {
  background(255, 0, 0);
  line(xh, yh, xo, yo);
  ellipse(xf/2, yf/2, 10, 10);
}

