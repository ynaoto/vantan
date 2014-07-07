class Ball {
  float x, y, r;
  Ball(float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
  }
  void draw() {
    ellipse(x, y, 2*r, 2*r);
  }
  boolean hit(float px, float py) {
    float dx = px - x;
    float dy = py - y;
    return dx*dx + dy*dy < r*r;
  }
}

Ball ball;

Ball movingBall = null;
float dragStartX, dragStartY;
float originX, originY;

void setup() {
  size(300, 300);
  ball = new Ball(100, 100, 50);
}

void draw() {
  background(255);
  ball.draw();
  if (movingBall != null) {
    pushStyle();
    stroke(255, 0, 0);
    ellipse(dragStartX, dragStartY, 10, 10);
    ellipse(mouseX, mouseY, 10, 10);
    line(dragStartX, dragStartY, mouseX, mouseY);
    stroke(0, 0, 255);
    ellipse(originX, originY, 10, 10);
    ellipse(movingBall.x, movingBall.y, 10, 10);
    line(originX, originY, movingBall.x, movingBall.y);
    popStyle();
  }
}

void mousePressed() {
  if (ball.hit(mouseX, mouseY)) {
    movingBall = ball;
    dragStartX = mouseX;
    dragStartY = mouseY;
    originX = ball.x;
    originY = ball.y;
  }
}

void mouseDragged() {
  if (movingBall != null) {
    movingBall.x = originX + mouseX - dragStartX;
    movingBall.y = originY + mouseY - dragStartY;
  }
}

void mouseReleased() {
  movingBall = null;
}

