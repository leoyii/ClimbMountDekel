//end - slide 15
void end() {
  noStroke();
  background(#99CCFF);
  //sun
  fill(255, 255, 100);
  ellipse(400, 80, 100, 100);
  //snow slope
  fill(255);
  arc(400, 500, 1000, 400, radians(180), radians(360));
  //text
  textFont(font2);
  fill(0);
  text("Thank you for playing our game!", 400, 50);
  textFont(font);
  textSize(30);
  text("Press 'R' to restart", 400, 140);
  text("Press 'ESC' to exit", 400, 180);
  text("Game created by Adam Altenberg, Leo Yi, and Matthew Kalman\nfor ICS2OP-1A, Ms. Basaraba", 400, 240);
}
