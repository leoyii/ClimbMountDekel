//rocky - slide 9
void rocky() {
  background(135, 206, 235);
  noStroke();
  rectMode(CENTER);
  //sun
  fill(255, 255, 100);
  ellipse(100, 100, 100, 100);
  //clouds
  fill(255);
  ellipse(350, 100, 80, 50);
  ellipse(400, 80, 80, 50);
  ellipse(450, 100, 80, 50);
  ellipse(400, 120, 80, 50);
  ellipse(220, 200, 80, 50);
  ellipse(270, 180, 80, 50);
  ellipse(320, 200, 80, 50);
  ellipse(270, 220, 80, 50);
  //mountain
  fill(#994C00);
  beginShape();
  vertex(650, 0);
  vertex(600, 150);
  vertex(550, 200);
  vertex(450, 400);
  vertex(350, 500);
  vertex(800, 500);
  vertex(800, 0);
  endShape(CLOSE);
  //snow
  fill(255);
  triangle(650, 0, 618, 95, 650, 95);
  rect(725, 45, 150, 100);
  arc(668, 95, 100, 100, radians(0), radians(180));
  arc(750, 95, 100, 100, radians(0), radians(180));
  arc(820, 95, 100, 100, radians(0), radians(180));
  //rope posts
  strokeWeight(10);
  stroke(200);
  line(450, 400, 450, 360);
  line(550, 200, 550, 160);
  line(600, 150, 600, 110);
  //ropes
  strokeWeight(3);
  stroke(85, 45, 0);
  line(320, 500, 450, 370);
  line(450, 370, 550, 170);
  line(550, 170, 600, 120);
  line(600, 120, 640, 0);
  //bag
  noStroke();
  fill(247, 157, 12);
  rect(rockyPersonX+368, rockyPersonY+450, 15, 25);
  //person
  strokeWeight(1);
  stroke(0);
  line(rockyPersonX+5+355, rockyPersonY+500, rockyPersonX+20+355, rockyPersonY+470);
  line(rockyPersonX+35+355, rockyPersonY+500, rockyPersonX+20+355, rockyPersonY+470);
  line(rockyPersonX+20+355, rockyPersonY+470, rockyPersonX+20+355, rockyPersonY+430);
  line(rockyPersonX+20+355, rockyPersonY+440, rockyPersonX+3+355, rockyPersonY+470);
  line(rockyPersonX+20+355, rockyPersonY+440, rockyPersonX+35+355, rockyPersonY+470);
  fill(255);
  ellipse(rockyPersonX+20+355, rockyPersonY+420, 20, 20);
  if (rockyPersonX<=80) {  //When the X co-ordinate of the person is less than this value, the person moves up diagonally
    rockyPersonX+=1.0;
    rockyPersonY-=1.0;
  } else if (rockyPersonX<=180) {  //When the X co-ordinate of the person is less than this value, the person moves up diagonally on a different angle
    frameRate(35);
    rockyPersonX+=1;
    rockyPersonY-=2;
  } else if (rockyPersonX<=230) {  //When the X co-ordinate of the person is less than this value, the person moves up diagonally on a different angle
    rockyPersonY-=1;
    rockyPersonX+=1;
  } else if (rockyPersonX<=350) {  //When the X co-ordinate of the person is less than this value, the person moves up diagonally on a different angle
    rockyPersonX+=0.7;
    rockyPersonY-=2;
  }
  //hat
  fill(3, 69, 150);
  noStroke();
  arc(rockyPersonX+373, rockyPersonY+420, 20, 30, radians(180), radians(360));
  rect(rockyPersonX+376, rockyPersonY+417, 25, 3);
  //text
  textFont(font);
  textSize(25);
  textAlign(CENTER, TOP);
  fill(0);
  text("You continue on, you\nmove on to the rocky\nmountain slope. Here you\nclimb up and eventually\nit starts to snow.", 200, 260);
  //Press enter to continue
  fill(255);
  rect(745, 470, 120, 70);
  fill(0);
  textSize(15);
  text("Press 'Enter'\nto advance", 745, 455);
}