class Ball
{
  float x, y;
  color c;
  float a;
}

ArrayList<Ball> balls = new ArrayList<Ball>();

void setup()
{
  size(300, 300);
  colorMode(HSB, 100);
  for (int i = 1; i <= 100; i++) {
    Ball ball = new Ball();
    ball.x = width / 2;
    ball.y = height / 2;
    ball.c = color(i, 100, 100);
    ball.a = i * 0.001;
    balls.add(ball);
  }
}

void draw()
{
  background(100);
  for (Ball ball : balls) {
    fill(ball.c);
    ellipse(ball.x, ball.y, 30, 30);
    float dx = mouseX - ball.x;
    float dy = mouseY - ball.y;
    ball.x += ball.a * dx;
    ball.y += ball.a * dy;
  }
}
