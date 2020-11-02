void intro() {
  textSize(100);
  fill(0);
  text("BREAKOUT", 500, 400);
  fill(255);
  text("BREAKOUT", 493, 393);
  rect(400, 600, 200, 100); 
  textSize(50);
  fill(0);
  text("PLAY", 500, 650);
}
void introclicks() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 600 && mouseY < 700) {
    mode = GAME;
  }
}
