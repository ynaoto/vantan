class Drop {
  float x, y, r;
  float vy;
  Drop(float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
    vy = 0;
  }
  void update() {
    y += vy;
    vy += 0.2;
  }
  void draw() {
    ellipse(x, y, r, r);
  }
}

ArrayList<Drop> drops;

float xh = 70;
float yh = 70;
float xo = 255;
float yo = 55;

void setup() {
  size(300, 300);
  drops = new ArrayList<Drop>();
}

void draw() {
  background(255, 0, 0);
//  fill(255, 0, 0, 10);
//  rect(0, 0, width, height);
//  fill(255);
  line(xh, yh, xo, yo);
  float a = map(mouseX, 0, width, 0, 1);
  float r = map(mouseY, 0, height, 1, 50);
  float xf = xh + a*(xo - xh);
  float yf = yh + a*(yo - yh);
  ellipse(xf, yf, r, r);
  
  Drop drop = new Drop(xf, yf, r);
  drops.add(drop);
  int n = drops.size();
  for (int i = n-1; 0 <= i; i--) {
    Drop d = drops.get(i);
    d.update();
    d.draw();
    if (height < d.y) {
      drops.remove(i);
    }
  }
}

