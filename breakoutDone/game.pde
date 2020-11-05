void game() {
  intro.pause();
  background(0);
  //ball
  stroke(130);
  fill(255);
  circle(x, y, d);
  //Paddle
  stroke(130);
  fill(255);
  circle(px, py, pd);

  //move Paddles
  if (akey == true) px = px -5;
  if (dkey == true) px = px +5;

  //Paddle Block
  if (px > width-100) {
    px = px -5;
  }
  if (px < 100) {
    px = px +5;
  }



  if ( dist(px, py, x, y) <= pd/2 + d/2) {
    beep.play();
    beep.rewind();
    vx = (x - px) /20;
    vy = (y - py) /20;
  }

  x = x + vx;
  y = y + vy;

  if (y < d/2 ) {
    vy = vy * -1;
    boop.play();
    boop.rewind();
  }
  if (x < d/2 || x > width-d/2) { 
    vx = vx * -1;
    boop.play();
    boop.rewind();
  }
  //bricks

  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBricks(i);
    }
    i=i+1;
  }
  //score
  textSize(30);
  text("Lives"+lives, 800, 650); 
  text("Score"+score, 200, 650);

  if (y > 800) {
    lives = lives -1;
    x = width/2;
    y = height/2;
    d = 20;
    failure.play();
    failure.rewind();
  }




  if (lives == 0) {
    mode = GAMEOVER;
  }
  if (score == 2) {
    mode = GAMEOVER;
  }



  fill(180);
  stroke(130);
  circle(950, 750, 60);
  stroke(50);
  line(960, 765, 960, 735);
  line(940, 765, 940, 735);
}


void gameclicks() {
  if (dist(mouseX, mouseY, 950, 750) < 60 ) {
    mode = PAUSE;
  }
}



void manageBricks(int i ) {
  strokeWeight(5);


  if (b[i] == 150) fill(red); 
  {
    stroke(255, 52, 92);
  }

  if (b[i] == 250) {
    fill(green);
    stroke(15, 157, 3);
  }

  if (b[i] == 50) {
    fill(cyan);
    stroke(41, 162, 240);
  }

  circle(a[i], b[i], brickd);
  if ( dist(x, y, a[i], b[i]) <= d/2 + brickd/2) {
    vx = (x - a[i]) /5;
    vy = (y - b[i]) /5;
    alive[i] = false;
    score = score + 1;
    breaks.play();
     breaks.rewind();
  }
}
