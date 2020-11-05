void pause() {
  
  
  fill(180);
stroke(130);
  circle(950, 750, 60);
  stroke(50);
  triangle(935, 765, 935, 735, 965, 750);

//Pause text
 textSize(120);
 fill(130);
 text("PAUSED", 500, 365);
 fill(255);
 text("PAUSED", 495, 360);
 
}
void pauseclicks() {
  if (dist(mouseX, mouseY, 950 ,750) < 60 ) {
  mode = GAME;  
  
  }
  
}
