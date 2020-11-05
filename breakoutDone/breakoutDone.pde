import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

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
float x, y, d;
boolean dkey, akey;
float px, py, pd, ballx, bally, balld;
float vy, vx;
int i;
PImage[] gif;
int numPages;
int f;
// colour variables
color red = #F18686;
color green = #B0F186;
color darkblue = #8E86F1;
color cyan = #86F1E4;
color blue = #86C1F1;

//score and lives variables
int score;
int lives;

//music variables
Minim minim;
AudioPlayer beep, boop, win, intro, failure, breaks;


void setup() {

  size(1000, 800);
  mode =INTRO;
  textAlign(CENTER, CENTER);

  numPages = 200;
  gif = new PImage[numPages];


  int l = 0;
  String zero1 = "0";
  String zero2 = "0";
  while (l < numPages) { 
    gif[l] = loadImage("frame_"+zero1+zero2+l+"_delay-0.02s.gif");
    l = l + 1;
    if (l == 10) zero1 = "";
    if (l == 100) zero2 = "";
  }
  minim = new Minim(this);
  beep = minim.loadFile("beep.wav");
  boop = minim.loadFile("boop.wav");
  failure = minim.loadFile("failure.wav");
  win = minim.loadFile("win.wav");
  breaks = minim.loadFile("break.wav");
  intro = minim.loadFile("intro.wav");


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
  n = 39;
  a = new int[n];
  b = new int[n];
  alive = new boolean[n];
  tempx = 50;
  tempy = 50;

  int i = 0;
  while (i < n) {
    a [i] = tempx;
    b [i] = tempy;
    alive[i] =true;
    tempx = tempx + 75;
    if (tempx >= width) {
      tempx =50;
      tempy = tempy +100;
    }

    i=i+1;
  }


  score = 0;
  lives = 3;
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
