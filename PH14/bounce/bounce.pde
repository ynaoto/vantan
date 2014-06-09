float g = 0.03;
float vx = 1, vy = 0;
float x = 100, y = 100;

void setup() {
  size(300, 300);
}

void draw() {
  x += vx;
  if (x < 0 || width < x) {
    vx *= -1;
  }
  
  y += vy;
  if (y < 0 || height < y) {
    vy *= -1;
  }
  
  ellipse(x, y, 20, 20);
  
  vy += g;
}

