void gameover() {
  if (lives == 0) {
    intro.play();

    background(180);
    image(gif[f], 0, 0, width, height);
    f = f + 1;
    if (f==numPages) f = 0;
    textSize(100);
    fill(255);
    text("GAMEOVER", 500, 400);
    textSize(30);
    text("<click to restart>", 500, 600);
    fill(150);
    //rect(370, 550, 280, 100); //to figure out the restart
  }

  if (score == 2) {
    background(180);
    image(gif[f], 0, 0, width, height);
    f = f + 1;
    if (f==numPages) f = 0;
    textSize(100);
    fill(255);
    text("YOU WIN", 500, 400);
    textSize(30);
    text("<click to restart>", 500, 600);
    win.play();
  }
}
void gameoverclicks() {
  if ( mouseX > 480 && mouseX < 650 && mouseY > 550 && mouseY < 650) {
    mode = INTRO;
  }

  lives = 3;
  score = 0;

  int i = 0;
  while (i < n) {
    alive[i] = true;
    i = i + 1;
  }
//Ball reset
  vx =  0;
  vy =  5;
  x = width/2;
  y = height/2;
  d = 20;

}
