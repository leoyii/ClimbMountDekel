//airport - slide 5
void airport () {
  rectMode(CORNER);
  background(159, 232, 252);
  strokeWeight(1);
  //Airplane
  fill(255);
  stroke(245);
  triangle(planeX+35,planeY+255,planeX+60,planeY+240,planeX,planeY+230);
  noStroke();
  beginShape();
  ellipse(planeX+65,planeY+235,40,25);
  vertex(planeX-15,planeY+265);
  vertex(planeX+60,planeY+222);
  vertex(planeX+80,planeY+243);
  vertex(planeX+5,planeY+285);
  endShape(CLOSE);
  stroke(245);
  triangle(planeX+35,planeY+255,planeX+60,planeY+240,planeX+60,planeY+295);
  triangle(planeX+20,planeY+275,planeX-5,planeY+290,planeX-25,planeY+255);
  //Windows
  stroke(100);
  strokeWeight(5);
  line(300,0,300,500);
  line(600,0,600,500);
  line(0,250,800,250);
  //Desk Person
  stroke(0);
  fill(255);
  ellipse(500,225,70,70);
  line(500,260,500,350);
  line(395,255,500,300);
  //Desk
  fill(117, 117, 115);
  rect(375,300,325,200);
  //Story text
  textFont(font);
  fill(255);
  rect(10,20,270,100);
  fill(0);
  textSize(18);
  text("You head over to the airport and spend your remaining money on a one way ticket to Mount Dekel.",20,30,240,80);
  textAlign(CENTER,TOP);
  textSize(24);
  text("Press 'enter'\nto advance",640,30,140,80);
  //Bag
  fill(247, 157, 12);
  ellipse(265,270,50,40);
  rect(240,270,50,60);
  arc(265,300,50,30,radians(180),radians(360));
  line(240,300,290,300);
  //Person
  fill(255);
  ellipse(290,195,75,75);
  line(290,232.5,290,385);
  line(290,385,245,500);
  line(290,385,335,500);
  line(290,250,260,350);
  line(290,250,armX,armY);
  //Money
  strokeWeight(3);
  beginShape();
  fill(47,180,53);
  vertex(moneyX,moneyY+15);
  vertex(moneyX+40,moneyY);
  vertex(moneyX+45,moneyY+15);
  vertex(moneyX+5,moneyY+30);
  endShape(CLOSE);
  fill(0);
  textSize(15);
  text("$",moneyX,moneyY+10,50,50);
  //Ticket
  fill(255);
  rect(ticketX,ticketY,50,25);
  fill(0);
  text("TICKET",ticketX+25,ticketY+7);
  //Hat
  noStroke();
  fill(3, 69, 150);
  arc(290,170,65,60,radians(180),radians(360));
  rect(322,164,15,6);
  //airport
  planeX+=0.85; //Plane moves diagnolly up the screen
  planeY-=0.5;
  moneyY--; //Money moves with person's arm
  moneyX+=0.5;
  if(moneyY==275){ //Money stops when it reaches table
    moneyY++;
    moneyX-=0.5;
  }
  armY--; //Arm moves up
  armX+=0.5;
  if(planeX>180){ //The arm stops and changes directions when it reaches the ticket, at the same time the plane reaches this point
    armY+=2;
    armX--;
    ticketX-=0.5; //Ticket goes back down with arm
    ticketY++;
  }
  if(armY==360){ //Arm stops when it reaches this point
    armY--;
    armX+=0.5;
    ticketX+=0.5; //Ticket stops with arm
    ticketY--;
  }
}
