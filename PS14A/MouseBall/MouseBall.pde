void setup() {
  size(300, 300);
  background(255);
}

void draw() {
  float cx = 100;
  float cy = 100;
  float r = 25;
  float x = mouseX;
  float y = mouseY;
  
  if ((x-cx)*(x-cx) + (y-cy)*(y-cy) < r*r) {
    point(x, y);
  }
}

