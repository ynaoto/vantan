class Drop {
  float x, y, r;
  color c;
  float vy;
  Drop(float x, float y, float r, color c) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;
    vy = 0;
  }
  void update() {
    y += vy;
    vy += 0.2;
  }
  void draw() {
    fill(c);
    ellipse(x, y, r, r);
  }
}

ArrayList<Drop> drops;

float xh = 70;
float yh = 70;
float xo = 255;
float yo = 55;
int hue = 0;

void setup() {
  size(300, 300);
  drops = new ArrayList<Drop>();
  colorMode(HSB);
}

void draw() {
  background(0, 255, 255);
  line(xh, yh, xo, yo);
  float a = map(mouseX, 0, width, 0, 1);
  float r = map(mouseY, 0, height, 1, 50);
  float xf = xh + a*(xo - xh);
  float yf = yh + a*(yo - yh);
  ellipse(xf, yf, r, r);
  
  Drop drop = new Drop(xf, yf, r, color(hue, 255, 255));
  drops.add(drop);
  hue = (hue + 1) % 256;
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

