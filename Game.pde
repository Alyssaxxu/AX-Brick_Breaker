void Game () {

  background (0);

  //paddle
  fill(255);
  circle(px, py, pd);

// score
  textSize( 30);
  fill (255);
  text( "score: " , 700, 750);
  text (score, 750, 750);
  
  // lives
  text( "lives:", 700, 680);
  text(lives, 750, 680);


  // move paddles
  if (akey ==true) px =  px-5;
  if (dkey==true ) px = px +5;

  px = max (px, 0);
  px = min( px, 800);

  //ball
  fill( 255);
  circle( bx, by, bd);
  bx = bx+ vx;
  by = by +vy;

  //bouncing
  if (dist(bx, by, px, py) < bd/2 + pd/2) { // paddle bouncing
    vx = (bx-px)/10;
    vy = (by - py)/ 10;
  }


  if (by < bd/2 ) {   //bounce off top
    vy= vy*-1;
  }
  if (bx< bd/2 || bx> width-bd/2) { // bounce off side
    vx= vx * -1;
  }

  // bricks


  int i = 0;
  while ( i < n) {
    if (alive [i] == true){
    manageBrick (i);
    }
    i = i+ 1;
  }

  
  //scoring
  if (by> 800){
    lives = lives-1;
    bx = width/2;
    by = height /2;
    timer = 100;
  }else{
    if (lives == 0) mode = GAMEOVER;
    if (score == 32) mode = GAMEOVER;
  }
  
  
  // pause button
  stroke(0);
  fill(255);
  circle( 100, 700, 100);
  fill(0);
  textSize( 25);
  text( "PAUSE", 100, 700);
  fill(255);
}

void gameClicks() {
  if (dist( mouseX, mouseY, 100, 700) < 50) {
    mode = PAUSE;
  }
}

void manageBrick (int i) {
  if (y [ i] == 50) fill (darkgrey);
  if (y [ i] == 150) fill (medgrey);
  if (y [ i] == 250) fill (lightgrey);
  if (y [ i] == 350) fill (white);
  circle( x[i], y [i], brickd );  
  if (dist(bx, by, x [ i], y[i]) < bd/2 +brickd/2) { // brick collisions
    vx = (bx-x[i])/10;
    vy = (by - y[i])/ 10;
    alive [i] = false;
    score = score +1;
    if (score == 32) mode = GAMEOVER;
  }
}
