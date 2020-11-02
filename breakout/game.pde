void game() {
  background(180);
  //ball
  circle(x, y, d);
  //Paddle
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
    vx = (x - px) /20;
    vy = (y - py) /20;
  }

  x = x + vx;
  y = y + vy;

  if (y < d/2 || y > height -d/2) vy = vy * -1;
  if (x < d/2 || x > width-d/2) vx = vx * -1;


  //bricks

  int i = 0;
  while (i < n) {
    circle(a[i], b[i], brickd);
    if ( dist(x, y, a[i], b[i]) <= d/2 + brickd/2) {
      vx = (x - a[i]) /5;
      vy = (y - b[i]) /5;
  }
      i=i+1;


 
  }



}
  void gameclicks() {
  }
