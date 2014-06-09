class Ball {
  float x, y;
  float vx, vy;
  void draw() {
    ellipse(x, y, 20, 20);
  }
  void move() {
    x += vx;
    y += vy;
    if (x < 0 || width < x) {
      vx *= -1;
    }
    if (y < 0 || height < y) {
      vy *= -1;
    }
  }
}

Ball b1, b2;

void setup() {
  size(300, 300);
  
  b1 = new Ball();
  b1.x = 100;
  b1.y = 100;
  b1.vx = 1;
  b1.vy = 1;
  
  b2 = new Ball();
  b2.x = 200;
  b2.y = 100;
  b2.vx = 1;
  b2.vy = 1;
}

void draw() {
  b1.draw();
  b2.draw();
  b1.move();
  b2.move();
}

