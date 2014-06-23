class Ball {
  float x, y;
  color c;
  float vx, vy;
}

ArrayList<Ball> balls;

void setup() {
  size(300, 300);
  balls = new ArrayList<Ball>();
  Ball ball;
  
  for (int i = 0; i < 1000; i++) {
    ball = new Ball();
    ball.x = random(width);
    ball.y = random(height);
    ball.c = color(random(255), random(255), random(255));
    ball.vx = random(-1, 1);
    ball.vy = random(-1, 1);
    balls.add(ball);  
  }
}

void draw() {
  background(0);
  int n = balls.size();
  for (int i = 0; i < n; i++) {
    Ball ball = balls.get(i);
    fill(ball.c);
    ellipse(ball.x, ball.y, 20, 20);
    ball.x = (ball.x + ball.vx) % width;
    ball.y = (ball.y + ball.vy) % height;
  }
}

