//river - slide 10
void river() {
  background(#D5E8D4);
  //background trees
  fill(#336600);
  rectMode(CENTER);
  noStroke();
  rect(400, 0, 800, 200);
  ellipse(150-100, 100, 80, 50);
  ellipse(100-100, 80, 80, 50);
  ellipse(150-100, 100, 80, 50);
  ellipse(100-100, 120, 80, 50);
  ellipse(150-100, 60, 80, 50);
  ellipse(110-100, 40, 80, 50);
  ellipse(70-100, 60, 80, 50);
  ellipse(70-100, 100, 80, 50);
  ellipse(150, 100, 80, 50);
  ellipse(100, 80+20, 80, 50);
  ellipse(150, 100+20, 80, 50);
  ellipse(100, 120+20, 80, 50);
  ellipse(150, 60+20, 80, 50);
  ellipse(110, 40+20, 80, 50);
  ellipse(70, 60+20, 80, 50);
  ellipse(70, 100+20, 80, 50);
  ellipse(150+100, 100, 80, 50);
  ellipse(100+100, 80, 80, 50);
  ellipse(150+100, 100, 80, 50);
  ellipse(100+100, 120, 80, 50);
  ellipse(150+100, 60, 80, 50);
  ellipse(110+100, 40, 80, 50);
  ellipse(70+100, 60, 80, 50);
  ellipse(70+100, 100, 80, 50);
  ellipse(150+190, 100, 80, 50);
  ellipse(100+190, 80+45, 80, 50);
  ellipse(150+190, 100+45, 80, 50);
  ellipse(100+190, 120+45, 80, 50);
  ellipse(150+190, 60+45, 80, 50);
  ellipse(110+190, 40+45, 80, 50);
  ellipse(70+190, 60+45, 80, 50);
  ellipse(70+190, 100+45, 80, 50);
  ellipse(150+300, 100, 80, 50);
  ellipse(100+300, 80, 80, 50);
  ellipse(150+300, 100, 80, 50);
  ellipse(100+300, 120, 80, 50);
  ellipse(150+300, 60, 80, 50);
  ellipse(110+300, 40, 80, 50);
  ellipse(70+300, 60, 80, 50);
  ellipse(70+300, 100, 80, 50);
  ellipse(150+500, 100, 80, 50);
  ellipse(100+500, 80, 80, 50);
  ellipse(150+500, 100, 80, 50);
  ellipse(100+500, 120, 80, 50);
  ellipse(150+500, 60, 80, 50);
  ellipse(110+500, 40, 80, 50);
  ellipse(70+500, 60, 80, 50);
  ellipse(70+500, 100, 80, 50);
  ellipse(150+400, 100, 80, 50);
  ellipse(100+400, 80+40, 80, 50);
  ellipse(150+400, 100+40, 80, 50);
  ellipse(100+400, 120+40, 80, 50);
  ellipse(150+400, 60+40, 80, 50);
  ellipse(110+400, 40+40, 80, 50);
  ellipse(70+400, 60+40, 80, 50);
  ellipse(70+400, 100+40, 80, 50);
  ellipse(150+650, 100, 80, 50);
  ellipse(100+650, 80+30, 80, 50);
  ellipse(150+650, 100+30, 80, 50);
  ellipse(100+650, 120+30, 80, 50);
  ellipse(150+650, 60+30, 80, 50);
  ellipse(110+650, 40+30, 80, 50);
  ellipse(70+650, 60+30, 80, 50);
  ellipse(70+650, 100+30, 80, 50);
  //river
  rectMode(CORNERS);
  fill(#82B366);
  rect(0, 247, 800, 500);
  fill(#DAE8FC);
  noStroke();
  rect(0, 360, 800, 500);
  arc(50, 370, 150, 100, radians(180), radians(360));
  arc(350, 370, 150, 100, radians(180), radians(360));
  arc(650, 370, 150, 100, radians(180), radians(360));
  arc(650, 370, 150, 100, radians(180), radians(360));
  fill(#82B366);
  arc(200, 350, 150, 100, radians(0), radians(180));
  arc(500, 350, 150, 100, radians(0), radians(180));
  arc(800, 350, 150, 100, radians(0), radians(180));
  //left tree
  rectMode(CORNER);
  fill(#994C00);
  rect(100, 50, 50, 200);
  rect(650, 50, 50, 200);
  quad(150, 160, 150, 180, 200, 160, 200, 140);
  fill(#00CC00);
  ellipse(150, 100, 80, 50);
  ellipse(100, 80, 80, 50);
  ellipse(150, 100, 80, 50);
  ellipse(100, 120, 80, 50);
  ellipse(150, 60, 80, 50);
  ellipse(110, 40, 80, 50);
  ellipse(70, 60, 80, 50);
  ellipse(70, 100, 80, 50);
  //right tree
  ellipse(150+550, 100, 80, 50);
  ellipse(100+550, 80, 80, 50);
  ellipse(150+550, 100, 80, 50);
  ellipse(100+550, 120, 80, 50);
  ellipse(150+550, 60, 80, 50);
  ellipse(110+550, 40, 80, 50);
  ellipse(70+550, 60, 80, 50);
  ellipse(70+550, 100, 80, 50);
  //vines
  strokeWeight(3);
  stroke(#82B366);
  noFill();
  arc(425, 160, 460, 60, radians(0), radians(180));
  arc(385, 100, 390, 60, radians(0), radians(180));
  //smaller right tree brush
  noStroke();
  fill(#00CC00);
  ellipse(150+60+450, 100+70, 50, 20);
  ellipse(180+450, 60+120, 50, 20);
  ellipse(100+100+450, 40+120, 50, 20);
  ellipse(70+100+450, 60+100, 50, 20);
  ellipse(70+90+450, 100+70, 50, 20);
  //smaller left tree brush
  ellipse(150+63, 100+60, 50, 20);
  ellipse(183, 60+110, 50, 20);
  ellipse(100+103, 40+110, 50, 20);
  ellipse(70+103, 60+90, 50, 20);
  ellipse(70+93, 100+60, 50, 20);
  //ground
  stroke(#336600);
  strokeWeight(5);
  line(0, 250, 800, 250);
  //bushes
  strokeWeight(1);
  fill(#4D9900);
  triangle(235-50, 430-200, 225-50, 500-200, 245-50, 500-200);
  triangle(235+15-50, 430-200, 225+15-50, 500-200, 245-50+15, 500-200);
  triangle(235+30-50, 430-200, 225+30-50, 500-200, 245+30-50, 500-200);
  triangle(235+45-50, 430-200, 225+45-50, 500-200, 245+45-50, 500-200);
  triangle(235+60-50, 430-200, 225+60-50, 500-200, 245+60-50, 500-200);
  triangle(300+235-50, 430-200, 300+225-50, 500-200, 300+245-50, 500-200);
  triangle(300+235-50+15, 430-200, 300+225+15-50, 500-200, 300+245+15-50, 500-200);
  triangle(300+235+30-50, 430-200, 300+225-20, 500-200, 300+245+30-50, 500-200);
  triangle(300+235+45-50, 430-200, 300+225+45-50, 500-200, 300+245+45-50, 500-200);
  triangle(300+235+60-50, 430-200, 300+225+60-50, 500-200, 300+245+60-50, 500-200);
  //person
  fill(255);
  stroke(0);
  strokeWeight(2);
  ellipse(405, riverPersonY+175+25-50, 30, 30);
  line(360+45, riverPersonY+190+25-50, 360+45, riverPersonY+240+25-50);
  line(360+45, riverPersonY+240+25-50, 380+45, riverPersonY+riverLegY+300+25-50);
  line(360+45, riverPersonY+240+25-50, 340+45, riverPersonY+riverLegY2+300+25-50);
  line(325+45, riverPersonY+200+50-50, 360+45, riverPersonY+200+25-50);
  line(395+45, riverPersonY+200+50-50, 360+45, riverPersonY+200+25-50);
  if (riverPersonY<=150) {  //when the y co-ordinate of the person is less than 150, the person moves down
    frameRate(35);
    riverPersonY+=2;
  } 
  if (riverPersonY>=0 && riverPersonY<=25) {  //when the y co-ordinate of the person is between these values, the right leg moves down and the left leg shrinks
    riverLegY++;
    riverLegY2--;
  } else if (riverPersonY>=0 && riverPersonY<=50) {  //when the y co-ordinate of the person is between these values, the left leg moves down and the right leg shrinks
    riverLegY--;
    riverLegY2+=2;
  } else if (riverPersonY>=0 && riverPersonY<=75) {  //when the y co-ordinate of the person is between these values, the right leg moves down and the left leg shrinks
    riverLegY2--;
    riverLegY+=2;
  } else if (riverPersonY>=0 && riverPersonY<=100) {  //when the y co-ordinate of the person is between these values, the left leg moves down and the right leg shrinks
    riverLegY--;
    riverLegY2+=2;
  } else if (riverPersonY>=0 && riverPersonY<=125) {  //when the y co-ordinate of the person is between these values, the right leg moves down and the left leg shrinks
    riverLegY2--;
    riverLegY+=2;
  } else if (riverPersonY>=0 && riverPersonY<=150) {  //when the y co-ordinate of the person is between these values, the left leg moves down and the right leg shrinks
    riverLegY--;
    riverLegY2+=2;
  } else if (riverPersonY>=0 && riverPersonY<160) {  //the left leg shrinks and two Xs are drawn on the person's face showing that he is dead. The text pops up and tells you to either quit or restart
    riverLegY2=20;
    line(393, 295, 403, 300);
    line(403, 295, 393, 300);
    line(407, 295, 417, 300);
    line(417, 295, 407, 300);
    textFont(font);
    textSize(15);
    fill(0);
    text("Press 'R' to restart or 'Q' to quit", 700, 480);
  }
  //hat
  fill(3, 69, 150);
  arc(405, riverPersonY+138, 25, 30, radians(180), radians(360));
  rect(385, riverPersonY+136, 30, 3);
  //water bottle
  rectMode(CENTER);
  rect(370, riverPersonY+200, 20, 50);
  arc(370, riverPersonY+180, 20, 20, radians(180), radians(360));
  //bag
  pushMatrix();
  translate(70, 0);
  scale(0.75);
  rectMode(CORNER);
  fill(247, 157, 12);
  stroke(0);
  ellipse(320,340,70,60);
  rect(285,340,70,80);
  arc(320,380,70,50,radians(180),radians(360));
  line(285,380,355,380);
  popMatrix();
  //Piranhas:
  //1
  noStroke();
  fill(255, 100, 100);
  ellipse(650-245, 450+200-pirahnaY, 50, 30);
  triangle(665-245, 450+200-pirahnaY, 680-245, 435+200-pirahnaY, 680-245, 466+200-pirahnaY);
  fill(#DAE8FC);
  triangle(625-245, 458+200-pirahnaY, 645-245, 450+200-pirahnaY, 625-245, 440+200-pirahnaY);
  fill(255);
  triangle(630-245, 442+200-pirahnaY, 630-245, 450+200-pirahnaY, 634-245, 445+200-pirahnaY);
  triangle(634-245, 445+200-pirahnaY, 636-245, 453+200-pirahnaY, 640-245, 448+200-pirahnaY);
  triangle(640-245, 448+200-pirahnaY, 642-245, 452+200-pirahnaY, 646-245, 451+200-pirahnaY);
  fill(255);
  ellipse(643-245, 440+200-pirahnaY, 7, 7);
  fill(0);
  ellipse(643-245, 440+200-pirahnaY, 5, 5);
  //2
  fill(255, 100, 100);
  ellipse(650-245+30, 450+200-50-pirahnaY, 50, 30);
  triangle(665-245+30, 450+200-50-pirahnaY, 680-245+30, 435+200-50-pirahnaY, 680-245+30, 466+200-50-pirahnaY);
  fill(#DAE8FC);
  triangle(625-245+30, 458+200-50-pirahnaY, 645-245+30, 450+200-50-pirahnaY, 625-245+30, 440+200-50-pirahnaY);
  fill(255);
  triangle(630-245+30, 442+200-50-pirahnaY, 630-245+30, 450+200-50-pirahnaY, 634-245+30, 445+200-50-pirahnaY);
  triangle(634-245+30, 445+200-50-pirahnaY, 636-245+30, 453+200-50-pirahnaY, 640-245+30, 448+200-50-pirahnaY);
  triangle(640-245+30, 448+200-50-pirahnaY, 642-245+30, 452+200-50-pirahnaY, 646-245+30, 451+200-50-pirahnaY);
  fill(255);
  ellipse(643-245+30, 440+200-50-pirahnaY, 7, 7);
  fill(0);
  ellipse(643-245+30, 440+200-50-pirahnaY, 5, 5);
  stroke(0);
  if (pirahnaY <= 200) {  //When the y co-ordinate of the pirahna is less than 200 the pirahna moves up
    pirahnaY += 3;
  }
  //text
  fill(255);
  textFont(font);
  textSize(25);
  text("You choose to stop and find water.\nYou find a river and you go to fill up\nyour water bottle, but instead you\nget eaten by hungry piranhas.", 390, 10);
}