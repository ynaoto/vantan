float x = 0;
float y = 20;
float vx = 1;

void setup()
{
}

void draw()
{
  if (50 < x) {
    background(255, 0, 0);
  } else {
    background(0, 255, 0);
  }
  ellipse(x, y, 10, 10);
  x += vx;
  if (100 < x) {
    vx *= -1;
  }
  if (x < 0) {
    vx *= -1;
  }
}

