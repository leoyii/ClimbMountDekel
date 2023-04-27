//On this slide the character enters the cave and the user decides whether they go deeper into the cave or sleep at the start of the cave 
void cave() {
  //Local variable declaration
  color first = color(0, 102, 204);   //Stores the colour of the top line in the background
  color last = color(255, 153, 153);  //Stores the colour of the bottom line in the background
  strokeWeight(2);
  for (int i = 0; i <= 500; i++) {  //For loop for the gradient background
    stroke(lerpColor(first, last, i/500.0));
    line(0, i, 800, i);
  }
  rectMode(CORNER);
  noStroke();
  //Main mountain body
  fill(150);
  beginShape();
  vertex(0, 500);
  vertex(200, 250);
  vertex(200, 100);
  vertex(400, 0);
  vertex(800, 0);
  vertex(800, 500);
  endShape();
  //Snow sitting on the mountain
  fill(255);
  quad(0, 500, 200, 250, 200, 300, 50, 500);
  quad(200, 100, 400, 0, 450, 0, 250, 100);
  rect(400, 0, 400, 100);
  triangle(400, 20, 245, 100, 400, 100);
  fill(150);
  ellipse(550, 100, 500, 100);
  //Inside cave
  fill(220);
  beginShape();
  vertex(200, 250);
  vertex(200, 100);
  vertex(350, 100);
  vertex(410, 60);
  vertex(470, 100);
  vertex(800, 100);
  vertex(800, 250);
  vertex(435, 250);
  vertex(465, 250);
  endShape();
  ellipse(635, 100, 200, 50);
  //Stationary icicles
  fill(188, 202, 222);
  triangle(405, 65, 415, 65, 410, 150);
  ellipse(410, 65, 10, 10);
  triangle(330, 100, 350, 100, 340, 200);
  ellipse(340, 100, 20, 20);
  //Text
  textFont(font4);
  textAlign(CENTER, TOP);
  fill(0);
  textSize(20);
  text("You are out of the cold and into the cave,it is still cold at the edge\nof the cave, where you are, and you feel some warmth\ncoming from deep within the cave.\nWill you set up camp in these survivable conditions?\nOr will you explore deeper into the cave?", 500, 305);
  //Option boxes
  fill(255);
  stroke(0);
  if (mouseX>=350&&mouseX<=450&&mouseY>=430&&mouseY<=480) {  //If statement to make the button bold if the mouse is on it
    strokeWeight(2);
  } else {
    noStroke();
  }
  rect(350, 430, 100, 50);
  stroke(0);
  if (mouseX>=540&&mouseX<=640&&mouseY>=430&&mouseY<=480) {  //If statement to make the button bold if the mouse is on it
    strokeWeight(2);
  } else {
    noStroke();
  }
  rect(540, 430, 100, 50);
  fill(0);
  textSize(15);
  text("Stay here", 400, 450);
  text("Explore\ndeeper into\nthe cave", 590, 433);
  //Rope
  stroke(85, 45 ,0);
  strokeWeight(3);
  line(300, 100, 0, 470);
  strokeWeight(1);
  stroke(0);
  line(280, 100, 320, 100);
  line(300, 100, 283, 107);
  line(300, 100, 317, 107);
  line(300, 100, 291, 115);
  //Bag
  fill(247, 157, 12);
  noStroke();
  rectMode(CENTER);
  rect(cavePersonX+8, cavePersonY+445, 20, 25);
  rectMode(CORNER);
  //Person
  strokeWeight(1);
  stroke(0);
  line(cavePersonX+caveLeg1, cavePersonY+500, cavePersonX+15, cavePersonY+470);
  line(cavePersonX+30+caveLeg2, cavePersonY+500, cavePersonX+15, cavePersonY+470);
  line(cavePersonX+15, cavePersonY+470, cavePersonX+15, cavePersonY+430);
  line(cavePersonX+15, cavePersonY+440, cavePersonX+caveLeg1, cavePersonY+470);
  line(cavePersonX+15, cavePersonY+440, cavePersonX+30+caveLeg2, cavePersonY+470);
  fill(255);
  ellipse(cavePersonX+15, cavePersonY+420, 20, 20);
  //Hat
  fill(3, 69, 150);
  noStroke();
  arc(cavePersonX+15, cavePersonY+415, 15, 15, radians(180), radians(360));
  rect(cavePersonX+7.5, cavePersonY+413, 22, 4);
  cavePersonX+=1.6;
  cavePersonY-=2;
  if (cavePersonY<=-250) {  //If statement that stops the upward motion of the character and starts the movement of its legs and arms
    cavePersonY+=2;
    caveLeg2-=1.6;
    caveLeg1+=1.6;
    if (cavePersonX>=230&&cavePersonX<460) {  //If statement for moving the character's legs and arms
      caveLeg2+=3.2;
      caveLeg1-=3.2;
    }
    if (cavePersonX>=260&&cavePersonX<460) {  //If statement for moving the character's legs and arms
      caveLeg2-=3.2;
      caveLeg1+=3.2;
    }
    if (cavePersonX>=290&&cavePersonX<460) {  //If statement for moving the character's legs and arms
      caveLeg2+=3.2;
      caveLeg1-=3.2;
    }
    if (cavePersonX>=320&&cavePersonX<460) {  //If statement for moving the character's legs and arms
      caveLeg2-=3.2;
      caveLeg1+=3.2;
    }
    if (cavePersonX>=350&&cavePersonX<460) {  //If statement for moving the character's legs and arms
      caveLeg2+=3.2;
      caveLeg1-=3.2;
    }
    if (cavePersonX>=380&&cavePersonX<460) {  //If statement for moving the character's legs and arms
      caveLeg2-=3.2;
      caveLeg1+=3.2;
    }
    if (cavePersonX>=410&&cavePersonX<460) {  //If statement for moving the character's legs and arms
      caveLeg2+=3.2;
      caveLeg1-=3.2;
    }
    if (cavePersonX>=440&&cavePersonX<460) {  //If statement for moving the character's legs and arms
      caveLeg2-=3.2;
      caveLeg1+=3.2;
    }
  }
  if (cavePersonX>=770) {  //If statement that stops the movement of the character at the end of the screen
    cavePersonX-=2;
  }
  //Icicle
  noStroke();
  fill(188, 202, 222);
  ellipse(520, icicleY+100, 30, 30);
  triangle(505, icicleY+100, 535, icicleY+100, 520, icicleY+200);
  if (cavePersonX>=460) {  //If statement for moving the icicle down, stopping the person and the movement of its arms and legs
    cavePersonX-=1.6;
    icicleY+=2;
    caveTimer++;
    caveLeg2+=1.6;
    caveLeg1-=1.6;
  }
  if (icicleY>=100) {  //If statement for stopping the falling of the icicle
    icicleY-=2;
  }
  if (caveTimer>=75) {  //If statement for starting the movement of the character and its arms and legs
    cavePersonX+=2;
    caveLeg2+=1.6;
    caveLeg1-=1.6;
  }
  if (cavePersonX>=480&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2-=3.2;
    caveLeg1+=3.2;
  }
  if (cavePersonX>=510&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2+=3.2;
    caveLeg1-=3.2;
  }
  if (cavePersonX>=540&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2-=3.2;
    caveLeg1+=3.2;
  }
  if (cavePersonX>=570&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2+=3.2;
    caveLeg1-=3.2;
  }
  if (cavePersonX>=600&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2-=3.2;
    caveLeg1+=3.2;
  }
  if (cavePersonX>=630&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2+=3.2;
    caveLeg1-=3.2;
  }
  if (cavePersonX>=660&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2-=3.2;
    caveLeg1+=3.2;
  }
  if (cavePersonX>=690&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2+=3.2;
    caveLeg1-=3.2;
  }
  if (cavePersonX>=720&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2-=3.2;
    caveLeg1+=3.2;
  }
  if (cavePersonX>=750&&cavePersonX<=770) {  //If statement for the movement of the character's arms and legs
    caveLeg2+=3.2;
    caveLeg1-=3.2;
  }
  if (cavePersonX>=769) {  //If statement that stops the movement of the character's arms and legs
    caveLeg2-=1.6;
    caveLeg1+=1.6; 
  }
}
