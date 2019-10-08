int[] posX = new int[10];
int[] posY = new int[10];
int[] SpeedX = new int[10];
int[] SpeedY = new int[10];
float[] bigness = new float[10];

void setup() {
  size(1000, 1000);
  for (int array = 0; array < 10; array++) {
    posX[array] = array * 100;
    posY[array] = array * 100;
    SpeedX[array] = int(random(1, 5));
    SpeedY[array] = int(random(1, 5));
  }
}

void draw() {
  clear();
  color(255, 255, 255);
  for (int array = 0; array < 10; array++) {
    creature(array, array);
    bigness[array] = posX[array] * 0.01;
  }
  move();
}

void creature(int x, int y) {
  circle(posX[x], posY[y], 40 * bigness[x]);
  circle(posX[x], (posY[y] - (25 * bigness[x])), 20 * bigness[x]);
  circle((posX[x] - (4 * bigness[x])), (posY[y] - (23 * bigness[x])), 4 * bigness[x]);
  circle((posX[x] + (4 * bigness[x])), (posY[y] - (23 * bigness[x])), 4 * bigness[x]);
}

void move() {
  for (int array = 0; array < 10; array++) {
    posX[array] = posX[array] + SpeedX[array];
    posY[array] = posY[array] + SpeedY[array];
    if (posX[array] >= 1200) {
      posX[array] = 0;
      SpeedX[array] = int(random(1, 5));
      bigness[array] = posX[array] * 0.01;
    }
    if (posY[array] >= height + 40) {
      SpeedY[array] = -SpeedY[array];
    }
    if (posY[array] <= -40) {
      SpeedY[array] = -SpeedY[array];
    }
  }
}
