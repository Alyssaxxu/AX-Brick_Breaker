void pause () {
   fill(#D9B0E5);
   textSize( 100);
text("PAUSED", 400, 400);
}

void pauseClicks() {
  if(dist( mouseX, mouseY, 100, 700) < 50){
    mode = GAME;
  }
  
}
