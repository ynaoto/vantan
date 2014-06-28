float x, y;
float vx, vy;

void setup() {
  size(300, 300);
  x = width/2;
  y = height/2;
  vx = vy = 0;
}

void draw() {
//  background(0);
  noStroke();
  fill(100, 100, 100, 10);
  rect(0, 0, width, height);
  stroke(1);
  fill(255);
  vx = 0.1 * (mouseX - x);
  vy = 0.1 * (mouseY - y);
  x += vx;
  y += vy;
  ellipse(x, y, 20, 20);
}
