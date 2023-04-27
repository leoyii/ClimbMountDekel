//introduction - slide 2
void intro() {
  background(#99CCFF);
  noStroke();
  //sun
  fill(255, 255, 100);
  ellipse(400, 80, 100, 100);
  //snow slope
  fill(255);
  arc(400, 500, 1000, 400, radians(180), radians(360));
  //text
  fill(0);
  textFont(font2);
  text("Welcome to our game!", 400, 50);
  textFont(font);
  textSize(30);
  textLeading(50);
  text("Press 'R' to restart\nPress 'Q' to quit at any time", 400, 130);
  textLeading(30);
  text("Press 'ENTER' ONCE to advance\nonly when you are told to do so", 400, 230);
  //Press enter to continue
  fill(255);
  stroke(0);
  strokeWeight(1);
  rect(745, 470, 120, 70);
  fill(0);
  textSize(15);
  text("Press 'Enter'\nto advance", 745, 455);
}
