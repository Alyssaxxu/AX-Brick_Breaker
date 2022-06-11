// Alyssa Xu
// May. 11, 2022
// 2- 4


//Mode Framework

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

// game entities
float bx, by, bd, vx, vy, px, py, pd;
float leftx, rightx;
float a, d;

// colour variables
color white = #FFFFFF;
color lightgrey = #BFBFBF;
color medgrey = #9D9D9D;
color darkgrey = #747474;

// scoring
int score, timer;
int lives;


//keyboard variables 
boolean akey, dkey;

// brick variables
int [] x;
int [] y;

int brickd;
boolean [] alive;
int n;
int tempx, tempy;

void setup() {
  textAlign(CENTER, CENTER);
  size( 800, 800);


  mode = INTRO;

  //set up paddle and ball
  bx = width/2;
  by = height-200;
  bd = 10;
  px = width/ 2;
  py = height;
  pd = 100;
  vx = 0;
  vy = 1;

score = 0;
lives = 3;

  //initialize keyboard variables
  akey = dkey = false;

  // set up bricks
  brickd = 50;
  n = 32;
  x = new int[n];
  y = new int [n];
alive = new boolean[n];
  tempx = 50;
  tempy = 50;

  int i= 0;
  while ( i< n) {
    x [i] = tempx;
    y [i] = tempy;
      alive [i] = true;
    tempx = tempx + 100;

    if (tempx > width ) {
      tempx = 50;
      tempy = tempy + 100;
    }
    i = i+1;
  }
}


void draw() {
  if ( mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    Game () ;
  } else if (mode == PAUSE) {
    pause() ;
  } else if (mode == GAMEOVER) {
    gameover ();
  } else {
    println("Mode error" + mode);
  }
}
