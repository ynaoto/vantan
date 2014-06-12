size(500, 500);
int i;
stroke(255, 0, 0);
for (i = 0; i < 500; i += 10) {
  line(250, 250, 0, i);
}
stroke(0, 255, 0);
for (i = 0; i < 500; i += 10) {
  line(250, 250, i, 0);
}
stroke(0, 0, 255);
for (i = 0; i < 500; i += 10) {
  line(250, 250, 500, i);
}
stroke(255, 0, 255);
for (i = 0; i < 500; i += 10) {
  line(250, 250, i, 500);
}

