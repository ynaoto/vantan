class Ball {
  float x, y;
  float vx, vy;
  float a;
  Ball() {
    x = random(width);
    y = random(height);
    vx = vy = 0;
    a = random(0, 0.01);
  }
  void update() {
    vx = a * (mouseX - x);
    vy = a * (mouseY - y);
    x += vx;
    y += vy;
    ellipse(x, y, 20, 20);
  }
}

ArrayList<Ball> balls;

void setup() {
  size(300, 300);
  balls = new ArrayList<Ball>();
  for (int i = 0; i < 10; i++) {
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
  for (int i = 0; i < n; i++) {
    Ball b = balls.get(i);
    b.update();
  }
}
