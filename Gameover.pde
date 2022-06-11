void gameover () {
  background (0);
  
  if ( lives < 0) {
        fill(#EBDFF2);
    textSize(50);
    text("YOU LOSE!", 400, 200);
    
    //Replay button
    fill (#7725A5);
    strokeWeight(5);
    rect( 300, 300, 200, 100);
    fill (255);
    textSize (20);
    text ("RETURN TO HOME", 400, 350);
  } else if ( score == 32) {
  
     fill(#EBDFF2);
    textSize(50);
    text("YOU WIN!", 400, 200);
    
    //Replay button
    fill (#7725A5);
    strokeWeight(5);
    rect( 300, 300, 200, 100);
    fill (255);
    textSize (20);
    text ("RETURN TO HOME", 400, 350);
  }
  }
  

void gameoverClicks() {
  if (mouseX> 300 && mouseX< 500 && mouseY > 300 && mouseY < 400) {
    mode = INTRO;
    lives = 3;
    score = 0;
  }
}
