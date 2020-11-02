//Brennan Clarke
// block 1,1 
// Breakout


//Brick Variables
int[] a;
int[] b;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;

//Mode Variables
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER= 4;
float x,y,d;
boolean dkey, akey;
float px, py, pd, ballx, bally, balld;
float vy, vx;
int i;

void setup() {
  size(1000, 1000);
  mode =INTRO;
  textAlign(CENTER, CENTER);
  
  //paddle
  px = width/2;
  py = height;
  pd = 200;
  
  //intialize ball
  ballx = width/2;
  bally = height/2;
  balld = 50;
 
  vx =  0;
  vy =  5;
  x = width/2;
  y = height/2;
  d = 20;
  //initialize keyboard buttons
  akey = dkey = false;
  
brickd = 50;
n = 36;
a = new int[n];
b = new int[n];
tempx = 100;
tempy = 100;

int i = 0;
while (i < n) {
a [i] = tempx;
b [i] = tempy;
tempx = tempx + 100;
if (tempx == width) {
  tempx =100;
 tempy = tempy +100;
}

i=i+1;
}


}





void draw() {
   if (mode == INTRO) {
   intro();
 } else if (mode == GAME) {
   game();
 } else if (mode == PAUSE) {
   pause();
 } else if (mode == GAMEOVER) {
   gameover();
  } else {
    println("mode error: " + mode);
  }
}
