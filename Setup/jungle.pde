//jungle - slide 8
void jungle() {
  background(#D5E8D4);
  noStroke();
  rectMode(CENTER);
  fill(#336600);
  rect(400, 100, 800, 200);
  arc(50, 200, 100, 100, radians(0), radians(180));
  arc(150, 200, 100, 100, radians(0), radians(180));
  arc(250, 200, 100, 100, radians(0), radians(180));
  arc(350, 200, 100, 100, radians(0), radians(180));
  arc(450, 200, 100, 100, radians(0), radians(180));
  arc(550, 200, 100, 100, radians(0), radians(180));
  arc(650, 200, 100, 100, radians(0), radians(180));
  arc(750, 200, 100, 100, radians(0), radians(180));
  arc(850, 200, 100, 100, radians(0), radians(180));
  arc(950, 200, 100, 100, radians(0), radians(180));
  //left tree
  fill(#6D1F00);
  quad(50, 0, 100, 0, 150, 500, 60, 500);
  quad(103, 50, 110, 107, 260, 0, 205, 0);
  //right tree
  pushMatrix();
  translate(760, 300);
  rotate(radians(45));
  rect(0, 0, 215, 104);
  popMatrix();
  pushMatrix();
  translate(650, 80);
  rotate(radians(75));
  rect(0, 0, 350, 100);
  popMatrix();
  quad(695, 55, 740, 0, 800, 0, 705, 105);
  //bushes
  fill(#4D9900);
  triangle(235, 430, 225, 500, 245, 500);
  triangle(235+15, 430, 225+15, 500, 245+15, 500);
  triangle(235+30, 430, 225+30, 500, 245+30, 500);
  triangle(235+45, 430, 225+45, 500, 245+45, 500);
  triangle(235+60, 430, 225+60, 500, 245+60, 500);
  triangle(300+235, 430, 300+225, 500, 300+245, 500);
  triangle(300+235+15, 430, 300+225+15, 500, 300+245+15, 500);
  triangle(300+235+30, 430, 300+225+30, 500, 300+245+30, 500);
  triangle(300+235+45, 430, 300+225+45, 500, 300+245+45, 500);
  triangle(300+235+60, 430, 300+225+60, 500, 300+245+60, 500);
  //text
  textFont(font);
  textSize(25);
  textAlign(CENTER, TOP);
  fill(255);
  text("You start your climb in the jungle,\nwhen you realize you are running low\non water. Do you push through and keep\ngoing or do you go search for water?", 375, 65);
  //choice buttons
  fill(255);
  stroke(0);
  if (mouseX>=190 && mouseX<=310 && mouseY>=280 && mouseY<=370) {  //when the mouse is within these co-ordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these co-ordinates there is no border
    noStroke();
  }
  rect(250, 325, 120, 70);
  stroke(0);
  if (mouseX>=510 && mouseX<=630 && mouseY>=280 && mouseY<=370) {  //when the mouse is within these co-ordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these co-ordinates there is no border
    noStroke();
  }
  rect(570, 325, 120, 70);
  fill(0);
  textFont(font);
  textSize(20);
  text("Keep Going", 250, 315);
  text("Search for\nWater", 570, 307);
  //Bag
  pushMatrix();
  translate(255, 220);
  scale(0.5);
  rectMode(CORNER);
  fill(247, 157, 12);
  strokeWeight(3);
  stroke(0);
  ellipse(320,340,70,60);
  rect(285,340,70,80);
  arc(320,380,70,50,radians(180),radians(360));
  line(285,380,355,380);
  popMatrix();
  //Person
  fill(255);
  stroke(0);
  strokeWeight(2);
  ellipse(360+55, 175+200, 30, 30);
  line(360+55, 190+200, 360+55, 240+200);
  line(360+55, 240+200, 380+55, 300+200);
  line(360+55, 240+200, 340+55, 300+200);
  line(325+55, 200+230, 360+55, 200+200);
  line(395+55, 200+230, 360+55, 200+200);
  //hat
  fill(3, 69, 150);
  arc(405+10, 338+28, 25, 30, radians(180), radians(360));
  rect(403, 337+28, 30, 3);
  //snake 1
  jungleSnakeX1-=2;
  stroke(175, 230, 180);
  strokeWeight(20);
  line(jungleSnakeX1+700, 490, jungleSnakeX1+800, 490);
  stroke(255, 110, 125);
  strokeWeight(2);
  line(jungleSnakeX1+695, 490 , jungleSnakeX1+680, 485);
  line(jungleSnakeX1+690, 488 , jungleSnakeX1+680, 490);
  stroke(0);
  strokeWeight(3);
  point(jungleSnakeX1+697, 485);
  //snake 2
  if (jungleSnakeX1 <= -700) {  //When the X co-ordinate of the snake is less than 700 the snake moves forward
    jungleSnakeX2+=2;
  }
  stroke(175, 230, 180);
  strokeWeight(20);
  line(jungleSnakeX2, 490, jungleSnakeX2+100, 490);
  stroke(255, 110, 125);
  strokeWeight(2);
  line(jungleSnakeX2+105, 490 , jungleSnakeX2+115, 485);
  line(jungleSnakeX2+110, 488 , jungleSnakeX2+115, 490);
  stroke(0);
  strokeWeight(3);
  point(jungleSnakeX2+97, 485);
  //rock
  noStroke();
  beginShape();
  fill(200);
  vertex(0, 400);
  vertex(35, 380);
  vertex(100, 380);
  vertex(120, 400);
  vertex(140, 400);
  vertex(160, 420);
  vertex(180, 440);
  vertex(200, 500);
  vertex(0, 500);
  endShape(CLOSE);
  strokeWeight(5);
  stroke(150);
  line(15, 410, 32, 400);
  line(135, 415, 155, 440);
  line(85, 485, 120, 485);
  line(75, 430, 65, 445);
  noStroke();
}
