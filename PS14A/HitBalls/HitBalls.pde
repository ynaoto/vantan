class Ball {
  float cx;
  float cy;
  float r;
  Ball (float cx, float cy, float r) {
    this.cx = cx;
    this.cy = cy;
    this.r = r;
  }
  boolean hit(float px, float py) {
    float d2 = (px-cx)*(px-cx) + (px-cy)*(px-cy);
    return d2 < r*r;  
  }
  void draw() {
    ellipse(cx, cy, 2*r, 2*r);
  }
}

Ball b1, b2;

void setup() {
  size(300, 300);
  b1 = new Ball(100, 100, 25);
  b2 = new Ball(200, 200, 30);
}

void draw() {
  background(255);

  if (b1.hit(mouseX, mouseY)) {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 0);
  }
  b1.draw();

  if (b2.hit(mouseX, mouseY)) {
    fill(255, 0, 0);
  } else {
    fill(0, 0, 255);
  }
  b2.draw();
}
