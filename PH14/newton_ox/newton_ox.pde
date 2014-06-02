int x = 180; // number of people who have waited for
int y = 2; // number of people who are newly come in per min
int z = 4; // number of people who are get in per min per gate
int gates = 2;


int count = 0;
int n = x;

void setup() {
  size(1000, 500);
  frameRate(10);
  colorMode(HSB, 1.0);
}

float [] hue = { 
  0, 0.2, 0.4, 0.6
};

void draw() {
  //background(0);
  fill(0);
  rect(0, 0, 40, 16);
  fill(1);
  text(count, 10, 10);
  if (0 < n) {
    for (int i = 0; i < n; i++) {
      fill(hue[(i / 10) % hue.length], 1, 1);
      ellipse(i*10, count*10, 10, 10);
    }
    n += y;
    n -= z * gates;
    count++;
  }
}

/*
Question:
 30 mins with 2 gates (given)
 18 mins with 3 gates (given)
 How long mins with 5 gates?
 
 Observed phenomena on the simulation:
 30 = x/(2*z - y) ...(a)
 18 = x/(3*z - y) ...(b)
 t = x/(gates*z - y) ...(c)
 
 The mathmatical question is to solve (c) where gates = 5
 
 From (a) and (b):
 30*(2*z - y) = 18*(3*z - y)
 -> 6*z = 12*y
 -> z = 2*y ...(d)
 
 Let (d) to (c):
 t = x/(10*y - y) = x/(9*y) ...(e)
 
 Let (d) to (a):
 30 = x/(4*y - y) = x/(3*y)
 -> x = 90*y ...(f)
 
 Let (f) to (e):
 t = (90*y)/(9*y) = 10
 
 Finally, you can say in this case with the given data:
 int z = 2*y; // number of people who are get in per min per gate
 int x = 90*y; // number of people who have waited for
 */
