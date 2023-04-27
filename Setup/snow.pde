//The character continues to climb the mountain through a blizzard
void snow() {
  background(230);
  rectMode(CORNER);
  //Snow
  stroke(255);
  strokeWeight(10);
  snowX = random(0, 800);
  for (int g=100; g<=800; g+=100) {
    point(snowX, snowY+100);
  }
  if (snowY>=100) {
    for (int g=120; g<=800; g+=50) {
      point(snowX, snowY);
    }
  }
  if (snowY>=200) {
    for (int g=110; g<=800; g+=120) {
      point(snowX, snowY-100);
    }
  }
  if (snowY>=300) {
    for (int g=105; g<=800; g+=130) {
      point(snowX, snowY-200);
    }
  }
  if (snowY>=400) {
    for (int g=115; g<=800; g+=100) {
      point(snowX, snowY-300);
    }
  }
  if (snowY>=500) {
    for (int g=120; g<=800; g+=115) {
      point(snowX, snowY-400);
    }
  }
  if (snowY>=600) {
    for (int g=120; g<=800; g+=115) {
      point(snowX, snowY-500);
    }
  }
  if (snowY>=700) {
    for (int g=120; g<=800; g+=115) {
      point(snowX, snowY-600);
    }
  }
  if (snowY>=800) {
    for (int g=120; g<=800; g+=115) {
      point(snowX, snowY-700);
    }
  }
  if (snowY==500) {
    snowY = 50;
  }
  snowY++;
  //Mountain
  fill(150);
  noStroke();
  triangle(800, 0, 800, 500, 0, 500);
  fill(255);
  quad(800, 0, 950, 0, 150, 500, 0, 500);
  //Clouds
  fill(175);
  ellipse(155, 80, 80, 50);
  ellipse(205, 60, 80, 50);
  ellipse(255, 80, 80, 50);
  ellipse(205, 100, 80, 50);
  fill(140);
  ellipse(105, 80, 80, 50);
  ellipse(155, 60, 80, 50);
  ellipse(205, 80, 80, 50);
  ellipse(155, 100, 80, 50);
  ellipse(455, 60, 120, 75);
  ellipse(530, 30, 120, 75);
  ellipse(605, 60, 120, 75);
  ellipse(530, 90, 120, 75);
  //Rope
  stroke(85, 45 ,0);
  strokeWeight(3);
  line(-50, 500, 750, 0);
  //Text
  textFont(font4);
  textSize(18);
  fill(0);
  textAlign(LEFT, TOP);
  text("You have now reached the snowy\narea of the mountain. It is becoming\nharder to breathe and the climate is\nmuch colder. Suddenly, out of\nnowhere you notice there is a\nblizzard in the distance.\nYou must run and find cover.", 500, 300);
  //Press 'Enter' to continue
  fill(255);
  strokeWeight(1);
  stroke(0);
  rect(690, 440, 110, 60);
  fill(0);
  text("Press 'Enter'\nto advance", 700, 450);
  //Bag
  fill(247, 157, 12);
  noStroke();
  rectMode(CENTER);
  rect(snowPersonX+15, snowPersonY+445, 20, 25);
  rectMode(CORNER);
  //Person
  stroke(0);
  line(snowPersonX+45, snowPersonY+490, snowPersonX+20, snowPersonY+470);
  line(snowPersonX+43, snowPersonY+495, snowPersonX+20, snowPersonY+470);
  line(snowPersonX+20, snowPersonY+470, snowPersonX+20, snowPersonY+430);
  line(snowPersonX+20, snowPersonY+440, snowPersonX+50, snowPersonY+440);
  fill(255);
  ellipse(snowPersonX+20, snowPersonY+420, 20, 20);
  //Hat
  fill(3, 69, 150);
  noStroke();
  arc(snowPersonX+20, snowPersonY+415, 15, 15, radians(180), radians(360));
  rect(snowPersonX+12.5, snowPersonY+413, 22, 4);
  snowPersonX++;
  snowPersonY-=0.63;
}
