void setup() {
  size(300, 300);
  background(255);
}

boolean isInsideCircle(float x, float y) {
  float r = 100;
  // x*x + y*y = r*r
  // x*x + y*y < r*r
  // x*x + y*y > r*r
  x -= width/2;
  y -= height/2;
  return x*x + y*y < r*r;
}

void draw() {
//  float x = random(width);
//  float y = random(height);
//  if (isInsideCircle(x, y)) {
//    point(x, y);
//  }

//  for (int y = 0; y < height; y++) {
//    for (int x = 0; x < width; x++) {
//      color c = color(0, 255, 0);
//      if (isInsideCircle(x, y)) {
//        c = color(255, 0, 0);
//      }
//      stroke(c);
//      point(x, y);
//    }
//  }
  
  color c = color(0, 255, 0);
  float x = mouseX;
  float y = mouseY;
  if (isInsideCircle(x, y)) {
    c = color(255, 0, 0);
  }
//  stroke(c);
//  point(x, y);
  fill(c);
  float r2 = random(3, 5);
  ellipse(x, y, r2, r2);
}

