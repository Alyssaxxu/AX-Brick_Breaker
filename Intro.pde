void intro (){
  background (0);
  

  // TITLE
  stroke(#D9B0E5);
  strokeWeight(1);
  fill(#D9B0E5);
  textSize(72);
  text( "Brick Breaker", 400, 200);
  
  // Play Button
  fill (255);
  rect (250, 400,300, 100);
  fill (0);
  textSize( 50);
  text( "Start", 400, 450);
  
}

void introClicks() {
  
  if (mouseX> 250 && mouseX< 550 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
  }
}
