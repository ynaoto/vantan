class Mover {
  float x, y;
  Mover() {
    x = random(width);
    y = random(height);
  }
  void follow(float tx, float ty) {
    x += 0.1 * (tx - x);
    y += 0.1 * (ty - y);
  }
  void draw() {
    fill(255);
    textSize(50);
    text("Ly", x, y);
  }
}

ArrayList<Mover> movers;

void setup() {
   size(300, 300);
   movers = new ArrayList<Mover>();
   for (int i = 0; i < 10; i++) {
     Mover m = new Mover();
     movers.add(m);
   }
}

void draw() {
   background(100, 100, 100);
//   noStroke();
//   fill(100, 100, 100, 10);
//   rect(0, 0, width, height);
   float tx = mouseX;
   float ty = mouseY;
   int n = movers.size();
   for (int i = 0; i < n; i++) {
     Mover m = movers.get(i);
     m.follow(tx, ty);
     m.draw();
     tx = m.x;
     ty = m.y;
   }
}
