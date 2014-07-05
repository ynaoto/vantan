class Region {
  float x, y, r;
  color c;
  void draw() {
    ellipse(x, y, 2*r, 2*r);
  }
  boolean isHit(float px, float py) {
    float dx = px - x;
    float dy = py - y;
    return dx*dx + dy*dy < r*r;
  }
}

ArrayList<Region> regions;

void setup() {
  size(300, 300);
  regions = new ArrayList<Region>();
  Region r;
  
  r = new Region();
  r.x = width/2;
  r.y = height/2;
  r.r = 100;
  r.c = color(0, 255, 0);
  regions.add(r);
  
  r = new Region();
  r.x = 100;
  r.y = 100;
  r.r = 50;
  r.c = color(0, 0, 255);
  regions.add(r);
}

void draw() {
  background(255);
  int n = regions.size();
  for (int i = 0; i < n; i++) {
    Region r = regions.get(i);
    color c = r.c;
    if (r.isHit(mouseX, mouseY)) {
      c = color(255, 0, 0);
    }
    fill(c);
    r.draw();
  }
}
