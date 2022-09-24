float len = 1000;

void setup() {
  size(850, 850);
  noStroke();
  fill(175, 158, 26);
}


void draw() {
  background(175, 83, 26);
  divide(width/2 - len/2, height/2 + sin(PI/3) * len/2, len, 1, int(map(mouseX, 0, width, 1, 10)));
}

void divide(float x, float y, float l, int lvl, int max) {
  if(lvl == max) {
    tri(x, y, l);
  } else {
    divide(x, y, l/2, lvl + 1, max);
    divide(x + l/2, y, l/2, lvl + 1, max);
    divide(x + l/4, y - sin(PI/3) * l/2, l/2, lvl + 1, max);
  }
}

void tri(float x, float y, float l) {
  triangle(x, y, x + l/2, y - sin(PI/3) * l, x + l, y);
}float len = 1000;

void setup() {
  size(850, 850);
  noStroke();
  fill(175, 158, 26);
}


void draw() {
  background(175, 83, 26);
  divide(width/2 - len/2, height/2 + sin(PI/3) * len/2, len, 1, int(map(mouseX, 0, width, 1, 10)));
}

void divide(float x, float y, float l, int lvl, int max) {
  if(lvl == max) {
    tri(x, y, l);
  } else {
    divide(x, y, l/2, lvl + 1, max);
    divide(x + l/2, y, l/2, lvl + 1, max);
    divide(x + l/4, y - sin(PI/3) * l/2, l/2, lvl + 1, max);
  }
}

void tri(float x, float y, float l) {
  triangle(x, y, x + l/2, y - sin(PI/3) * l, x + l, y);
}
