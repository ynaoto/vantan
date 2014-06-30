class Ball {
  float x, y;
  float vx, vy;
  float a;
  Ball() {
    x = random(width);
    y = random(height);
    vx = vy = 0;
  }
  void follow(float tx, float ty) {
    vx = 0.1 * (tx - x);
    vy = 0.1 * (ty - y);
    x += vx;
    y += vy;
    ellipse(x, y, 20, 20);
  }
}

ArrayList<Ball> balls;

void setup() {
  size(300, 300);
  balls = new ArrayList<Ball>();
  for (int i = 0; i < 100; i++) {
    Ball b = new Ball();
    balls.add(b);
  }
}

void draw() {
//  background(0);
  noStroke();
  fill(100, 100, 100, 10);
  rect(0, 0, width, height);
  stroke(1);
  fill(255);
  int n = balls.size();
  balls.get(0).follow(mouseX, mouseY);
  for (int i = 1; i < n; i++) {
    Ball lastB = balls.get(i-1);
    Ball b = balls.get(i);
    b.follow(lastB.x, lastB.y);
  }
}
