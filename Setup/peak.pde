//peak - slide 14
void peak() {
  background(135, 206, 235);
  rectMode(CORNER);
  //Mountain
  fill(255);
  noStroke();
  quad(0, 500, 700, 500, 600, 250, 200, 250);
  //Clouds
  ellipse(200, 100, 80, 50);
  ellipse(250, 80, 80, 50);
  ellipse(300, 100, 80, 50);
  ellipse(250, 120, 80, 50);
  ellipse(550, 75, 160, 100);
  ellipse(700, 115, 160, 100);
  ellipse(600, 115, 160, 100);
  ellipse(650, 35, 160, 100);
  ellipse(750, 75, 160, 100);
  //Sun
  fill(255, 255, 0);
  ellipse(0, 0, 250, 250);
  //Text
  textFont(font4);
  textSize(20);
  fill(0);
  textAlign(CENTER, TOP);
  text("You survive the night and the next day\nyou reach the top of the mountain.\nYou place a flag to mark your success, but\nwhen you try to take a selfie, you fall off\nthe mountain and die.", 400, 300);
  //Press enter to continue
  fill(255);
  strokeWeight(1);
  stroke(0);
  rect(700, 450, 100, 50);
  fill(0);
  textSize(15);
  textAlign(LEFT, TOP);
  text("Press 'Enter'\nto advance", 710, 460);
  //Rope
  stroke(85, 45, 0);
  strokeWeight(3);
  line(0, 470, 200, 220);
  stroke(200);
  line(200, 220, 200, 250);
  //Person
  pushMatrix();
  translate(peakPersonX+35, peakPersonY+500);
  if (peakTimer2>=1) {  //If statement for redrawing the left arm of the character once he is about to fall and rotating the character as it is falling
    armFill=255;
    armFill2=0;
    rotate(radians(peakPersonRotate));
    peakPersonRotate++;
  }
  //Bag
  fill(247, 157, 12);
  noStroke();
  rectMode(CENTER);
  if (peakArmRotate<=0) {
  rect(-22, -55, 20, 25);
  } else {
    rect(-7, -55, 20, 25);
  }
  rectMode(CORNER);
  stroke(0);
  strokeWeight(1);
  line(peakLeg1-30, 0, -15, -30);
  line(peakLeg2+0, 0, -15, -30);
  line(-15, -30, -15, -70);
  line(-15, -60, 0, -30);
  fill(255);
  ellipse(-15, -80, 20, 20);
  stroke(0, armFill);
  line(-15, -60, -46, -74);
  //Hat
  fill(3, 69, 150);
  noStroke();
  arc(-15, -85, 15, 15, radians(180), radians(360));
  if (peakArmRotate<=0) {
  rect(-22.5, -87, 22, 4);
  } else {
    rect(-27.5, -87, 22, 4);
  }
  popMatrix();
  //Moving arm
  pushMatrix();
  translate(peakPersonX+20, peakPersonY+440);
  if (peakPersonX>=555) {  //If statement for rotating the character's arm
    rotate(radians(peakArmRotate));
    peakArmRotate+=4;
    //Phone
    fill(0);
    rect(-20, 20, 14, 7);
  }
  if (peakArmRotate>=90) {  //If statement for stopping the rotation of the arm
    peakArmRotate-=4;
  }
  stroke(0, armFill2);
  line(0, 0, -15, 30);
  popMatrix();
  //Person movement
  peakPersonX++;
  peakPersonY-=1.25;
  if (peakPersonX>=200) {  //If statement for stopping the upward motion of the character and starting the motion of its legs
    peakPersonY+=1.25;
    peakLeg1++;
    peakLeg2--;
  }
  if (peakPersonX>=230&&peakPersonX<=350) {  //If statement for moving the character's legs
    peakLeg1-=2;
    peakLeg2+=2;
  }
  if (peakPersonX>=260&&peakPersonX<=350) {  //If statement for moving the character's legs
    peakLeg1+=2;
    peakLeg2-=2;
  }
  if (peakPersonX>=290&&peakPersonX<=350) {  //If statement for moving the character's legs
    peakLeg1-=2;
    peakLeg2+=2;
  }
  if (peakPersonX>=320&&peakPersonX<=350) {  //If statement for moving the character's legs
    peakLeg1+=2;
    peakLeg2-=2;
  }
  //Flag
  fill(175, 230, 180, flagFill);
  stroke(0, flagFill);
  if (peakPersonX>=350) {  //If statment for making the flag visble and stopping the movement of the character
    peakPersonX--;
    flagFill=255;
    peakTimer++;
    peakLeg1--;
    peakLeg2++;
  }
  line(385, 250, 385, 200);
  rect(385, 175, 50, 25);
  //Person movement continued
  if (peakTimer>=60) {  //If statement for starting the movement of the character and its legs
    peakPersonX++;
    peakLeg1--;
    peakLeg2++;
  }
  if (peakPersonX>=410&&peakPersonX<=600) {  //If statement for moving the character's legs
    peakLeg1-=2;
    peakLeg2+=2;
  }
  if (peakPersonX>=380&&peakPersonX<=600) {  //If statement for moving the character's legs
    peakLeg1+=2;
    peakLeg2-=2;
  }
  if (peakPersonX>=470&&peakPersonX<=600) {  //If statement for moving the character's legs
    peakLeg1-=2;
    peakLeg2+=2;
  }
  if (peakPersonX>=440&&peakPersonX<=600) {  //If statement for moving the character's legs
    peakLeg1+=2;
    peakLeg2-=2;
  }
  if (peakPersonX>=530&&peakPersonX<=600) {  //If statement for moving the character's legs
    peakLeg1-=2;
    peakLeg2+=2;
  }
  if (peakPersonX>=500&&peakPersonX<=600) {  //If statement for moving the character's legs
    peakLeg1+=2;
    peakLeg2-=2;
  }
  if (peakPersonX>=590&&peakPersonX<=600) {  //If statement for moving the character's legs
    peakLeg1-=2;
    peakLeg2+=2;
  }
  if (peakPersonX>=560&&peakPersonX<=600) {  //If statement for moving the character's legs
    peakLeg1+=2;
    peakLeg2-=2;
  }
  if (peakPersonX>=600) {  //If statement for stopping the movement of the character's legs
    peakLeg1++;
    peakLeg2--;
  }
  if (peakPersonX>=585) {  //If statement for stopping the character's movement
    peakPersonX--;
    peakTimer2++;
  }
  if (peakTimer2>=1) {  //If statement for making the character fall
    peakPersonX++;
    peakPersonY+=3;
  }
}
