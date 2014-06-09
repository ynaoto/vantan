float th = 0;

void setup() {
  size(300, 300);
}

void draw() {
  //background(100);
  float x = 100 * cos(th);
  float y = 100 * sin(th);
  ellipse(x + 150, y + 150, 30, 30);
  th += 0.01;
}
