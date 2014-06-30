float x1, y1;
float x2, y2;

void setup() {
  size(300, 300);
  x1 = y1 = 0;
  x2 = 0; y2 = height/2;
}

void draw() {
  background(255);
  
  fill(255, 0, 0, 100);
  ellipse(x1, y1, 50, 50);
  x1++; if (width < x1) x1 = 0;
  y1++; if (height < y1) y1 = 0;
  
  fill(0, 255, 0, 100);
  ellipse(x2, y2, 50, 50);
  x2++; if (width < x2) x2 = 0;
  //y2++;
}

