//plane - slide 6
void plane () {
  rectMode(CORNER);
  background(207);
  noStroke();
  strokeWeight(3);
  //Carpet
  fill(110, 33, 252);
  rect(0,375,800,125);
  //Window
  fill(159, 232, 252);
  ellipse(300,100,140,180);
  ellipse(800,100,140,180);
  //Clouds
  fill(255);
  noStroke();
  ellipse(cloudX+300,90,100,40); //First cloud
  ellipse(cloudX+280,75,36,15);
  ellipse(cloudX+296,80,40,40);
  ellipse(cloudX+325,75,40,20);
  ellipse(cloudX+300,100,40,30);
  ellipse(cloudX+283,96,30,40);
  ellipse(cloudX+324,99,40,30);
  ellipse(cloudX2+300,90,100,40); //Second cloud
  ellipse(cloudX2+280,75,36,15);
  ellipse(cloudX2+296,80,40,40);
  ellipse(cloudX2+325,75,40,20);
  ellipse(cloudX2+300,100,40,30);
  ellipse(cloudX2+283,96,30,40);
  ellipse(cloudX2+324,99,40,30);
  fill(207);
  rect(0,0,230,375);
  rect(370,0,360,375);
  noFill();
  stroke(0);
  ellipse(300,100,140,180); //Stroke around window
  ellipse(300,100,145,185);
  ellipse(300,100,150,190);
  ellipse(300,100,155,195);
  ellipse(800,100,140,180);
  ellipse(800,100,145,185);
  ellipse(800,100,150,190);
  ellipse(800,100,155,195);
  //Chairs
  fill(65, 69, 66);
  triangle(400,385,540,240,680,385);
  triangle(0,385,0,240,140,385);
  fill(207);
  triangle(430,375,540,270,650,375);
  triangle(10,375,10,270,110,375);
  fill(1, 45, 133);
  noStroke();
  rect(430,240,220,40);
  rect(610,50,40,220);
  rect(0,240,110,40);
  rect(70,50,40,220);
  ellipse(620,60,60,80);
  ellipse(430,260,30,40);
  ellipse(80,60,60,80);
  //Person
  fill(255);
  stroke(0);
  strokeWeight(3);
  ellipse(560,50,75,75);
  line(560,87.5,560,238);
  line(560,238,420,238);
  line(420,238,410,320);
  line(420,238,390,320);
  line(560,115,540,172);
  line(540,172,460,172);
  line(560,115,535,230);
  //Arm rests
  noStroke();
  fill(65, 69, 66);
  rect(400,175,280,20);
  rect(0,175,140,20);
  //Bag
  fill(247, 157, 12);
  stroke(0);
  ellipse(320,340,70,60);
  rect(285,340,70,80);
  arc(320,380,70,50,radians(180),radians(360));
  line(285,380,355,380);
  //Story text
  fill(255);
  textFont(font);
  textAlign(CENTER,TOP);
  textSize(25);
  text("You get on the plane and fly to Mount Dekel",-100,440,800,500);
  textSize(22);
  text("Press 'enter'\nto advance",640,415,150,100);
  //animation
  cloudX+=2; //First cloud movement
  cloudX2+=2; //Second cloud movement
  if(cloudX>1000){ //Cloud moves back 1200 and loops
    cloudX=-1200;
  }
  if(cloudX2>1000){ //Cloud moves back 1200 and loops
    cloudX2=-1200;
  }
}
