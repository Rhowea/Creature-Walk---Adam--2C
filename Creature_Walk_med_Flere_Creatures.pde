void setup() {
  size(1000,1000);
  background(0,0,0);
  frameRate(60);
}
int posx = 10;
int posy = 50;
int speed = 1;
float a = 0.0;
float wobble = sin(a);
float bigness = 1;

void draw() {
  clear();
  color(255,255,255);
  creature(posx, posy);
  creature(posx + posx, posy + posy);
  creature(posx-posx, posy-posx);
  creature(posx, 1000-posy);
  move();
  if(bigness>=10){
    bigness = 0;
    posx= 10;
    posy= 50;
  }
}
void move() {
  posx = posx + speed;
  posy = posy + speed;
  a = a+0.5;
  wobble = 4 * sin(a);
  bigness = bigness + 0.05;
}
void creature(int x, int y){
  circle(x*bigness, y*bigness + wobble*bigness, 40*bigness);
  circle(x*bigness, (y - 25)*bigness + wobble*bigness, 20*bigness);
  circle((x-4)*bigness, (y-23)*bigness + wobble*bigness, 4*bigness);
  circle((x+4)*bigness, (y-23)*bigness + wobble*bigness, 4*bigness);
}
