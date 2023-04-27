//The character continues deeper into the cave and then gets blown up by a fireball shot by a dragon
void deepCave() {
  //Background
  background(100);
  rectMode(CORNER);
  noStroke();
  fill(200);
  beginShape();
  vertex(0, 200);
  vertex(0, 350);
  vertex(400, 450);
  vertex(800, 300);
  vertex(800, 200);
  vertex(450, 0);
  endShape(CLOSE);
  //Animated Person
  pushMatrix();
  translate(15, 355);
  if (fireX<=15) {  //If statement for rotating the person when it is hit by the fireball
    rotate(radians(deepCavePersonRotate));
    deepCavePersonRotate+=5;
  }
  //Bag
  fill(247, 157, 12);
  noStroke();
  rectMode(CENTER);
  rect(-7, -50, 20, 25);
  rectMode(CORNER);
  //Person
  strokeWeight(1);
  stroke(0);
  line(-15, 0, 0, -30);
  line(15, 0, 0, -30);
  line(0, -30, 0, -70);
  line(0, -60, -15, -30);
  line(0, -60, 15, -30);
  fill(255);
  ellipse(0, -80, 20, 20);
  //Hat
  fill(3, 69, 150);
  noStroke();
  arc(0, -85, 15, 15, radians(180), radians(360));
  rect(-7.5, -87, 22, 4);
  popMatrix();
  //Text
  if (deepCavePersonRotate>=95) {  //If statement to stop the rotation of the character, draw the X's on its face and display the text on screen once the character has fallen over
    deepCavePersonRotate-=5;
    pushMatrix();
    translate(15, 355);
    rotate(radians(deepCavePersonRotate));
    stroke(0);
    line(-2, -80+2, -5, -83+2);
    line(-5, -80+2, -2, -83+2);
    line(2, -80+2, 5, -83+2);
    line(2, -83+2, 5, -80+2);
    popMatrix();
    fill(0);
    textSize(20);
    textFont(font4);
    text("You find out that the heat source\nis the dragon.\nYou get hit with a fireball and die", 250, 160);
    textSize(20);
    text("Press 'r' to restart or 'q' to quit", 380, 350);
  }
  //Dragon Scales and Horns
  strokeWeight(1);
  stroke(0);
  fill(255, 223, 0);
  triangle(dragonX+646, 152, dragonX+600, 137, dragonX+675, 95);
  triangle(dragonX+595, 129, dragonX+580, 127, dragonX+587.5, 112);
  triangle(dragonX+580, 127, dragonX+565, 125, dragonX+572.5, 112);
  triangle(dragonX+565, 125, dragonX+550, 125, dragonX+557.5, 112);
  triangle(dragonX+550, 125, dragonX+535, 125, dragonX+542.5, 112);
  triangle(dragonX+633, 144, dragonX+645, 150, dragonX+645, 130);
  triangle(dragonX+645, 150, dragonX+655, 159, dragonX+660, 140);
  triangle(dragonX+655, 159, dragonX+663, 170, dragonX+672, 151);
  triangle(dragonX+663, 170, dragonX+670, 182, dragonX+682, 164);
  triangle(dragonX+682, 184, dragonX+697, 186, dragonX+689.5, 170);
  triangle(dragonX+697, 186, dragonX+712, 188, dragonX+704.5, 172);
  triangle(dragonX+712, 188, dragonX+727, 190, dragonX+719.5, 174);
  triangle(dragonX+727, 190, dragonX+742, 192, dragonX+734.5, 176);
  triangle(dragonX+757, 194, dragonX+742, 192, dragonX+749.5, 178);
  triangle(dragonX+757, 194, dragonX+772, 196, dragonX+764.5, 180);
  //Dragon Body
  fill(7, 84, 22);
  noStroke();
  ellipse(dragonX+550, 200, 250, 150);
  quad(dragonX+800, 200, dragonX+800, 260, dragonX+620, 235, dragonX+620, 175);
  //Dragon Nose
  strokeWeight(1);
  stroke(0);
  fill(3.5, 42, 11);
  arc(dragonX+450, 190, 25, 15, radians(180), radians(360), OPEN);
  fill(0);
  noStroke();
  ellipse(dragonX+450, 190, 15, 10);
  //Dragon Front Horn
  fill(255, 223, 0);
  stroke(0);
  triangle(dragonX+580, 135, dragonX+630, 150, dragonX+655, 86);
  //Dragon Eye
  noStroke();
  fill(180, 0, 0);
  triangle(dragonX+520, 160, dragonX+560, 160, dragonX+540, 170);
  arc(dragonX+540, 160, 40, 20, radians(180), radians(360));
  strokeWeight(12);
  stroke(0);
  point(dragonX+535, 159);
  dragonX-=2;
  fill(200);
  noStroke();
  arc(dragonX+450, 230, 180, 50, radians(250), radians(449), CHORD);
  if (dragonX<=0) {  //If statement for stopping the movement of the dragon and drawing the fireball
    dragonX+=2;
    //Fireball
    pushMatrix();
    translate(fireX*(1.0-fireScale), fireY*(1.0-fireScale));
    scale(fireScale);
    noStroke();
    fill(255, 0, 0, fireFill);
    arc(fireX, fireY, 100, 100, radians(90), radians(270));
    triangle(fireX, fireY-50, fireX, fireY+50, fireX+100, fireY);
    fill(255, 150, 0, fireFill);
    arc(fireX, fireY, 75, 75, radians(90), radians(270));
    triangle(fireX, fireY-37.75, fireX, fireY+37.75, fireX+75, fireY);
    fill(255, 255, 0, fireFill);
    arc(fireX, fireY, 50, 50, radians(90), radians(270));
    triangle(fireX, fireY-25, fireX, fireY+25, fireX+50, fireY);
    popMatrix();
    if (fireX<=10) {  //If statement for making the fireball invisible
      fireFill=0;
    }
    fireX-=7.5;
    fireY+=0.975;
    if (fireX<=425) {  //If statement for making the fireball bigger
      fireScale+=0.01875;
    }
    if (fireX<=225) {  //If statement for stopping the fireball's increase in size
      fireScale-=0.01875;
    }
  }
  //Dragon Mouth
  noStroke();
  fill(120, 0, 0);
  quad(dragonX+530, 217, dragonX+530, 243, dragonX+540, 236, dragonX+540, 223);
  fill(255, 150, 150);
  pushMatrix();
  translate(dragonX+485, 250);
  rotate(radians(-10));
  ellipse(0, 0, 100, 10);
  popMatrix();
  fill(255);
  triangle(dragonX+527, 248, dragonX+517, 250, dragonX+522, 229);
  triangle(dragonX+516, 250, dragonX+506, 252, dragonX+511, 231);
  triangle(dragonX+505, 252, dragonX+495, 254, dragonX+500, 233);
  triangle(dragonX+494, 254, dragonX+484, 256, dragonX+489, 235);
  triangle(dragonX+483, 256, dragonX+473, 258, dragonX+478, 237);
  triangle(dragonX+472, 258, dragonX+462, 260, dragonX+467, 239);
  triangle(dragonX+461, 260, dragonX+451, 262, dragonX+456, 241);
  triangle(dragonX+517, 213, dragonX+507, 210, dragonX+512, 230);
  triangle(dragonX+506, 210, dragonX+496, 207, dragonX+501, 227);
  triangle(dragonX+495, 207, dragonX+485, 206, dragonX+490, 226);
  triangle(dragonX+484, 205, dragonX+474, 205, dragonX+479, 225);
  triangle(dragonX+473, 205, dragonX+463, 205, dragonX+468, 225);
  triangle(dragonX+462, 205, dragonX+452, 205, dragonX+457, 225);
  triangle(dragonX+451, 206, dragonX+441, 205, dragonX+446, 225);
  triangle(dragonX+440, 206, dragonX+430, 205, dragonX+435, 225);
  //Area to block out fireball
  fill(245, 231, 195);
  noStroke();
  beginShape();
  vertex(dragonX+800, 300);
  vertex(dragonX+640, 265);
  vertex(dragonX+585, 275);
  vertex(dragonX+520, 275);
  vertex(dragonX+470, 268);
  vertex(dragonX+440, 260);
  vertex(dragonX+620, 235);
  vertex(dragonX+800, 260);
  endShape();
  fill(7, 84, 22);
  beginShape();
  vertex(dragonX+528, 247);
  vertex(dragonX+528, 244);
  vertex(dragonX+540, 235);
  vertex(dragonX+540, 220);
  vertex(dragonX+530, 215);
  vertex(dragonX+519, 212);
  vertex(dragonX+515, 180);
  vertex(dragonX+605, 150);
  vertex(dragonX+645, 185);
  vertex(dragonX+670, 182);
  vertex(dragonX+800, 200);
  vertex(dragonX+800, 260);
  vertex(dragonX+620, 235);
  endShape();
  //Explosion
  if (fireX<=10) {  //If statement for drawing the explosion
    pushMatrix();
    translate(explosionX*(1.0-explosionScale), explosionY*(1.0-explosionScale));
    scale(explosionScale);
    fill(255, 0, 0, explosionFill);
    ellipse(explosionX, explosionY, 3, 3);
    fill(255, 150, 0, explosionFill);
    ellipse(explosionX, explosionY, 2, 2);
    fill(255, 255, 0, explosionFill);
    ellipse(explosionX, explosionY, 1, 1);
    popMatrix();
    explosionScale+=10;
  }
  if (explosionScale>=100) {  //If statement for making the explosion visible
    explosionFill=0;
  }
}
