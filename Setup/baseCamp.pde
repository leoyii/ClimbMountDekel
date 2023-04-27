//baseCamp - slide 7
void baseCamp() {
  background(0);
  //tent first half
  stroke(255);
  strokeWeight(5);
  fill(#000033);
  triangle(100+300, 185, 300+0, 500, 400, 500);
  //bag
  pushMatrix();
  rectMode(CORNER);
  fill(247, 157, 12);
  strokeWeight(3);
  stroke(0);
  translate(campPersonX+10, 65);
  scale(0.75);
  ellipse(120-100,340,70,60);
  rect(85-100,340,70,80);
  arc(120-100,380,70,50,radians(180),radians(360));
  line(85-100,380,155-100,380);
  stroke(255);
  popMatrix();
  //person
  campPersonX += 2;
  fill(255);
  ellipse(campPersonX+50, 275, 40, 40);
  line(campPersonX+50, 290, campPersonX+50, 390);
  line(campArmX+campPersonX, 400, campPersonX+50, 330);
  line(campPersonX+50, 330, campArmX2+campPersonX+100, 400);
  line(campPersonX+50, 390, campLegX+campPersonX+80, 500);
  line(campPersonX+50, 390, campLegX2+campPersonX+20, 500);
  if (campPersonX>=0 && campPersonX<=100) {
    campLegX2++;
    campLegX--;
    campArmX++;
    campArmX2--;
  } 
  if (campPersonX>=100 && campPersonX<=200) {
    campLegX2--;
    campLegX++;
    campArmX2++;
    campArmX--;
  }
  if (campPersonX>=200 && campPersonX<=300) {
    campLegX--;
    campLegX2++;  
    campArmX++;
    campArmX2--;
  }
  if (campPersonX>=300 && campPersonX<=400) {
    campLegX2--;
    campLegX++;  
    campArmX2++;
    campArmX--;
  }
  //hat
  noStroke();
  fill(3, 69, 150);
  arc(campPersonX+50, 263, 25+20, 30+20, radians(180), radians(360));
  rect(campPersonX+30, 261, 30+25, 5);
  //tent second half
  stroke(255);
  fill(#000020);
  triangle(100+300, 185, 400, 500, 500, 500);
  quad(300+100, 180, 300+500, 180, 300+600, 500, 300+200, 500);
  line(300+100, 180, 300+100, 500);
  //stars
  fill(255);
  beginShape();
  vertex(100, 50);
  vertex(105, 60);
  vertex(115, 65);
  vertex(105, 70);
  vertex(100, 80);
  vertex(95, 70);
  vertex(85, 65);
  vertex(95, 60);
  endShape(CLOSE);
  beginShape();
  vertex(100+120, 50+50);
  vertex(105+120, 60+50);
  vertex(115+120, 65+50);
  vertex(105+120, 70+50);
  vertex(100+120, 80+50);
  vertex(95+120, 70+50);
  vertex(85+120, 65+50);
  vertex(95+120, 60+50);
  endShape(CLOSE);
  beginShape();
  vertex(100+300, 50+20);
  vertex(105+300, 60+20);
  vertex(115+300, 65+20);
  vertex(105+300, 70+20);
  vertex(100+300, 80+20);
  vertex(95+300, 70+20);
  vertex(85+300, 65+20);
  vertex(95+300, 60+20);
  endShape(CLOSE);
  beginShape();
  vertex(100+400, 50+35);
  vertex(105+400, 60+35);
  vertex(115+400, 65+35);
  vertex(105+400, 70+35);
  vertex(100+400, 80+35);
  vertex(95+400, 70+35);
  vertex(85+400, 65+35);
  vertex(95+400, 60+35);
  endShape(CLOSE);
  //moon
  fill(#FFFF99);
  noStroke();
  arc(680, 90, 180, 150, radians(270), radians(450));
  fill(0);
  arc(665, 90, 120, 150, radians(270), radians(450));
  //text
  fill(255);
  textFont(font);
  textSize(25);
  textAlign(CENTER, TOP);
  text("You have landed and it\nis getting dark so you\nneed to set up camp\nfor the night", 300+340, 250);
  //continue text
  rectMode(CENTER);
  rect(745, 470, 120, 70);
  fill(0);
  textSize(15);
  text("Press 'Enter'\nto advance", 745, 455);
}
