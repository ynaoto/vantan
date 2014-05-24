float th = 0;

void setup() {
  size(300, 300);
}

void draw() {
  //background(255, 255, 0, 0.2);
  fill(255, 255, 0, 20);
  noStroke();
  rect(0, 0, width, height);
  int r = width / 2;
  stroke(random(256), random(256), random(256));
  line(r, r, r+r*cos(th), r+r*sin(th));
  th += 0.01;
}
