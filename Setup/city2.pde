//city two - slide 4
void city2 () {
  background(252, 238, 154);
  rectMode(CORNER);
  strokeWeight(1);
  //Backpack:
  //Straps
  fill(247, 157, 12);
  ellipse(240, 375, 125, 275);
  fill(252, 238, 154);
  ellipse(240, 375, 50, 175);
  //Inside bag
  fill(227, 126, 11);
  ellipse(400, 300, 300, 300);
  //Waterbottle
  fill(50, 62, 168);
  ellipse(bottleX+95.5, bottleY+180, 50, 25);
  noStroke();
  rect(bottleX+70, bottleY+80, 50, 100);
  ellipse(bottleX+95.5, bottleY+80, 50, 60);
  stroke(0);
  fill(200);
  ellipse(bottleX+95.5, bottleY+50, 15, 15);
  //Flashlight
  noStroke();
  fill(0);
  rect(lightX+320,lightY+30,150,40);
  fill(251, 255, 0);
  triangle(lightX+340,lightY+50.5,lightX+295,lightY+20,lightX+295,lightY+80);
  fill(0);
  triangle(lightX+340,lightY+50.5,lightX+300,lightY+10,lightX+300,lightY+90);
  //Compass
  stroke(100);
  ellipse(compassX+660,compassY+130,100,45);
  ellipse(compassX+660,compassY+120,100,35);
  fill(209, 6, 16);
  noStroke();
  triangle(compassX+650,compassY+115,compassX+665,compassY+110,compassX+670,compassY+125);
  //Rest of bag
  stroke(0);
  fill(247, 157, 12);
  ellipse(265, 450, 60, 400);
  ellipse(535, 450, 60, 400);
  noStroke();
  rect(250, 300, 300, 200);
  stroke(0);
  arc(400, 300, 250, 175, radians(180), radians(360));
  strokeWeight(3);
  arc(400, 375, 325, 150, radians(180), radians(360));
  line(240, 375, 560, 375);
  //Story text
  textFont(font);
  textSize(30);
  fill(0);
  text("You pack your bags and prepare for the trip.", 10, 300, 150, 500);
  textAlign(CENTER, TOP);
  text("Press 'enter'\nto advance", 600, 400, 200, 100);
  text("Click on each object to pack up",275,410,250,100);
}
