void intro() {
  intro.play();
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if(f==numPages) f = 0;

  
  textSize(100);
  fill(0);
  text("BREAKOUT", 500, 400);
  fill(255);
  text("BREAKOUT", 493, 393);
  strokeWeight(5);
  rect(400, 600, 200, 100); 
  textSize(50);
  fill(0);
  text("PLAY", 500, 650);
  
 if (mouseX > 400 && mouseX < 600 && mouseY > 600 && mouseY < 700) {
 
   stroke(0, 0, 180);
 } else {
stroke(255); 
 }
  
  
  
  
}
void introclicks() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 600 && mouseY < 700) {
    mode = GAME;
  }
}
