void setup() {
  size(1000,1000);
  background(0,0,0);
  frameRate(60);
}
int posx = 50;
int posy = 50;
int speed = 1;
float a = 0.0;
float wobble = sin(a);
float bigness = 1;

void draw() {
  clear();
  scale(bigness);
  color(255,255,255);
  circle(posx, posy + wobble, 40);
  circle(posx, (posy - 25) + wobble, 20);
  color(0,0,0);
  circle(posx-4, posy-23 + wobble, 4);
  circle(posx+4, posy-23 + wobble, 4);
  move();
}
void move() {
  posx = posx + speed;
  posy = posy + speed;
  a = a+0.5;
  wobble = 4 * sin(a);
  bigness = bigness + 0.1;
  if (posx>(width/bigness)+100) {
    posx = 0;
    posy = 0;
    bigness = 1;
  }
}
