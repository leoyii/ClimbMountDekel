//city one - slide 3
void city1 () {
  while(userInput==true){ //Turns the boolean false so that the program only asks for user inputs once
    userInput=false;
    userName=getString("Please enter your name:");
  }
  background(114, 115, 114);
  //Road
  rectMode(CORNER);
  strokeWeight(1);
  noStroke();
  fill(230, 191, 18);
  rect(40, 400, 35, 15);
  rect(140, 400, 35, 15);
  rect(240, 400, 35, 15);
  rect(340, 400, 35, 15);
  rect(440, 400, 35, 15);
  rect(540, 400, 35, 15);
  rect(640, 400, 35, 15);
  rect(740, 400, 35, 15);
  //Sidewalk
  fill(184, 183, 180);
  rect(75, 275, 725, 50);
  rect(75, 0, 50, 275);
  //Houses
  stroke(0);
  fill(94, 14, 0);
  rect(450, 0, 350, 275);
  rect(125, 0, 350, 275);
  fill(4, 2, 54);
  //Doors
  rect(650, 75, 100, 200);
  rect(325, 75, 100, 200);
  fill(94, 14, 0);
  ellipse(675, 175, 10, 10);
  ellipse(350, 175, 10, 10);
  //Windows
  fill(184, 183, 180);
  rect(500, 25, 100, 100);
  rect(150, 25, 100, 100);
  fill(0);
  rect(195, 25, 10, 100);
  rect(150, 70, 100, 10);
  rect(545, 25, 10, 100);
  rect(500, 70, 100, 10);
  //Post
  fill(90, 90, 92);
  rect(90, 50, 40, 260);
  ellipse(110, 50, 40, 20);
  noStroke();
  ellipse(110, 310, 40, 20);
  //Poster
  textFont(font3);
  stroke(0);
  fill(255);
  strokeWeight(sW);
  rect(85, 150, 50, 60);
  strokeWeight(1);
  fill(0);
  textSize(6);
  textAlign(CENTER, TOP);
  text("CLIMB MOUNT DEKEL", 90, 160, 40, 60);
  textSize(9);
  text("WIN", 90, 180, 40, 60);
  textSize(7);
  text("$1 000 000", 90, 195, 40, 60);
  //Story text
  textFont(font);
  textSize(23);
  text("Hi "+userName+"! You are out of money and running out of options.\nThen, You see a poster about a mountain climbing competition to win money.", 400, 430);
  fill(255);
  text("Press 'enter'\nto advance", 700, 10);
  //Person
  fill(255);
  stroke(0);
  ellipse(city1PersonX+60, 175, 30, 30);
  line(city1PersonX+60, 190, city1PersonX+60, 240);
  line(city1PersonX+60, 240, rightLegX, 300);
  line(city1PersonX+60, 240, leftLegX, 300);
  line(city1PersonX+60, 200, city1PersonX+50, 245);
  line(city1PersonX+60, 200, city1PersonX+70, 245);
  //Hat
  noStroke();
  fill(3, 69, 150);
  arc(city1PersonX+60, 165, 25, 30, radians(180), radians(360));
  rect(city1PersonX+42, 162, 10, 3);
  //animation
  city1PersonX-=1;
  rightLegX-=2;    
  if (rightLegX<=700) {  //When the right leg reaches a point they will stop and the left leg will move
    rightLegX+=2;
    leftLegX-=2;
  } 
  if (leftLegX<=650) {  //When the left leg reaches a point they will stop and the right leg will move
    rightLegX-=2;
    leftLegX+=2;
  }
  if (rightLegX<=600) {  //When the right leg reaches a point they will stop and the left leg will move
    rightLegX+=2;
    leftLegX-=2;
  }
  if (leftLegX<=550) {  //When the left leg reaches a point they will stop and the right leg will move
    rightLegX-=2;
    leftLegX+=2;
  }
  if (rightLegX<=500) {  //When the right leg reaches a point they will stop and the left leg will move
    rightLegX+=2;
    leftLegX-=2;
  }
  if (leftLegX<=450) {  //When the left leg reaches a point they will stop and the right leg will move
    rightLegX-=2;
    leftLegX+=2;
  }
  if (rightLegX<=400) {  //When the right leg reaches a point they will stop and the left leg will move
    rightLegX+=2;
    leftLegX-=2;
  }
  if (leftLegX<=350) {  //When the left  leg reaches a point they will stop and the right leg will move
    rightLegX-=2;
    leftLegX+=2;
  }
  if (rightLegX<=300) {  //When the right  leg reaches a point they will stop and the left leg will move
    rightLegX+=2;
    leftLegX-=2;
  }
  if (leftLegX<=250) {  //When the left  leg reaches a point they will stop and the right leg will move
    rightLegX-=2;
    leftLegX+=2;
  }
  if (rightLegX<=200) {  //When the right leg reaches this point, everything will stop
    rightLegX+=2;
    city1PersonX++;
  }
  if (slideCount==3) {  //When the person reaches this point, the stroke weight of the poster will increase
    if (city1PersonX<=166) {
      sW=5;
      mousePressed();
    }
  }
}
