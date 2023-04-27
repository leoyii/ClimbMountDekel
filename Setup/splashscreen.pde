//splashscreen - slide 0
void splashScreen() {
  background(135, 205, 235);
  pushMatrix();
  translate(screenX, 0);
  //loading line
  stroke(0);
  strokeWeight(20);
  line(35, 310, 765, 310);
  strokeWeight(10);
  stroke(0, 255, 0);
  line(40, 310, loadingX+40, 310);
  //loading text
  fill(0);
  textFont(font);
  textSize(30);
  text("Loading", 380, 330);
  strokeWeight(5);
  stroke(loadingFill1);
  point(435, 350);
  stroke(loadingFill2);
  point(445, 350);
  stroke(loadingFill3);
  point(455, 350);
  if (timer>=20) {  //When the timer reaches 20 the first loading dot appears
    loadingFill1=0;
  }
  if (timer>=50) {  //When the timer reaches 50 the second loading dot appears
    loadingFill2=0;
  }
  if (timer>=80) {  //When the timer reaches 80 the third loading dot appears
    loadingFill3=0;
  }
  if (timer>=120) {  //When the timer reachs 120 the dots disappear and reset
    loadingFill1=color(135, 205, 235);
    loadingFill2=color(135, 205, 235);
    loadingFill3=color(135, 205, 235);
  }
  if (timer>=150) {  //When the timer reaches 150 the third loading dot appears
    loadingFill1=0;
  }
  if (timer>=180) {  //When the timer reaches 180 the third loading dot appears
    loadingFill2=0;
  }
  if (timer>=210) {  //When the timer reaches 210 the third loading dot appears
    loadingFill3=0;
  }
  if (timer>=250) {  //When the timer reachs 250 the dots disappear and reset
    loadingFill1=color(135, 205, 235);
    loadingFill2=color(135, 205, 235);
    loadingFill3=color(135, 205, 235);
  }
  if (timer>=280) {  //When the timer reaches 280 the third loading dot appears
    loadingFill1=0;
  }
  if (timer>=310) {  //When the timer reaches 310 the third loading dot appears
    loadingFill2=0;
  }
  if (timer>=340) {  //When the timer reaches 340 the third loading dot appears
    loadingFill3=0;
  }
  if (timer>=380) {  //When the timer reachs 380 the dots disappear and reset
    loadingFill1=color(135, 205, 235);
    loadingFill2=color(135, 205, 235);
    loadingFill3=color(135, 205, 235);
  }
  if (timer>=410) {  //When the timer reaches 410 the third loading dot appears
    loadingFill1=0;
  }
  if (timer>=440) {  //When the timer reaches 440 the third loading dot appears
    loadingFill2=0;
  }
  if (timer>=480) {  //When the timer reaches 480 the third loading dot appears
    loadingFill3=0;
  }
  //names
  textFont(font);
  text("Presented by: Adam, Leo, and Matthew", 400, 50);
  popMatrix();
  //bird
  stroke(0);
  strokeWeight(1);
  pushMatrix();
  translate(0, 200);
  scale(0.25);
  fill(255);
  triangle(birdX+loadingX*4+30, 100, birdX+loadingX*4+150, 250, birdX+loadingX*4+230, 200);
  quad(birdX+loadingX*4+230, 200, birdX+loadingX*4+355, 125, birdX+loadingX*4+380, 140, birdX+loadingX*4+300, 250);
  triangle(birdX+loadingX*4+380, 140, birdX+loadingX*4+390, 190, birdX+loadingX*4+365, 160);
  triangle(birdX+loadingX*4+120, 200, birdX+loadingX*4+230, wingY, birdX+loadingX*4+330, 200);
  fill(240);
  triangle(birdX+loadingX*4+120, 200, birdX+loadingX*4+150, 250, birdX+loadingX*4+230, 200);
  triangle(birdX+loadingX*4+330, 200, birdX+loadingX*4+300, 250, birdX+loadingX*4+230, 200);
  fill(245);
  triangle(birdX+loadingX*4+230, wingY, birdX+loadingX*4+230, 200, birdX+loadingX*4+120, 200);
  fill(250);
  triangle(birdX+loadingX*4+230, wingY, birdX+loadingX*4+230, 200, birdX+loadingX*4+330, 200);
  popMatrix();
  if (wingY == 400) {
    wingDown = false;
  } if (wingY == 0) {
    wingDown = true;
  }
  if (wingDown == false) {
    wingY-=10;
  } else {
    wingY+=10;
  }
  if (loadingX<=720) {
    loadingX+=2;
    timer++;
  }
  if (loadingX>=720) {
    screenX-=4;
    birdX-=6;
    menuCloudX-=2;
    menuCloudX2-=1;
  }
  pushMatrix();
  translate(screenX, 0);
  //Clouds
  noStroke();
  //first cloud
  ellipse(menuCloudX+1500+300,90,100,40);
  ellipse(menuCloudX+1500+280,75,36,15);
  ellipse(menuCloudX+1500+296,80,40,40);
  ellipse(menuCloudX+1500+325,75,40,20);
  ellipse(menuCloudX+1500+300,100,40,30);
  ellipse(menuCloudX+1500+283,96,30,40);
  ellipse(menuCloudX+1500+324,99,40,30);
  //second cloud
  ellipse(menuCloudX2+1500+300,300+90,100,40);
  ellipse(menuCloudX2+1500+280,300+75,36,15);
  ellipse(menuCloudX2+1500+296,300+80,40,40);
  ellipse(menuCloudX2+1500+325,300+75,40,20);
  ellipse(menuCloudX2+1500+300,300+100,40,30);
  ellipse(menuCloudX2+1500+283,300+96,30,40);
  ellipse(menuCloudX2+1500+324,300+99,40,30);
  //third cloud
  pushMatrix();
  translate(-1000, -400);
  scale(2);
  ellipse(menuCloudX2+1500+300,200+90,100,40);
  ellipse(menuCloudX2+1500+280,200+75,36,15);
  ellipse(menuCloudX2+1500+296,200+80,40,40);
  ellipse(menuCloudX2+1500+325,200+75,40,20);
  ellipse(menuCloudX2+1500+300,200+100,40,30);
  ellipse(menuCloudX2+1500+283,200+96,30,40);
  ellipse(menuCloudX2+1500+324,200+99,40,30);
  popMatrix();
  //fourth cloud
  pushMatrix();
  translate(500, 100);
  scale(1.5);
  ellipse(menuCloudX+1000+300,90,100,40);
  ellipse(menuCloudX+1000+280,75,36,15);
  ellipse(menuCloudX+1000+296,80,40,40);
  ellipse(menuCloudX+1000+325,75,40,20);
  ellipse(menuCloudX+1000+300,100,40,30);
  ellipse(menuCloudX+1000+283,96,30,40);
  ellipse(menuCloudX+1000+324,99,40,30);
  popMatrix();
  //MENU SLIDE
  noStroke();
  fill(255, 255, 100);
  ellipse(2500+700, 100, 100, 100);
  //mountain
  fill(#999999);
  noStroke();
  triangle(2500+370, 150, 2500+250, 500, 2500+470, 500);
  triangle(2500+300, 500, 2500+580, 150, 2500+800, 500);
  triangle(2500+320, 400, 2500+480, 50, 2500+650, 370);
  fill(255);
  triangle(2500+416, 190, 2500+480, 50, 2500+554, 190);
  triangle(2500+370, 150, 2500+385, 200, 2500+352, 200);
  triangle(2500+580, 150, 2500+548, 190, 2500+605, 190);
  triangle(2500+485, 190, 2500+605, 190, 2500+550, 225);
  triangle(2500+525, 190, 2500+415, 190, 2500+460, 215);
  triangle(2500+370, 210, 2500+350, 200, 2500+386, 200);
  //text
  fill(textFill1);
  textFont(font2);
  textAlign(CENTER, TOP);
  textSize(50);
  text("Climb Mount Dekel", 2500+225, 40);
  //level select text
  textFont(font);
  textSize(25);
  text("Press 'ENTER' to access\nlevel select", 2500+160, 380);
  //level select, play and quit buttons
  rectMode(CENTER);
  stroke(textFill1);
  fill(buttonFill1);  //button 1 - play button
  if (mouseX>=60 && mouseX<=260 && mouseY>=110 && mouseY<=210) {
    strokeWeight(3);
  } else {
    noStroke();
  }
  rect(2500+160, 160, 200, 100, 50);
  stroke(textFill1);
  fill(buttonFill2);  //button 2 - quit button
  if (mouseX>=60 && mouseX<=260 && mouseY>=230 && mouseY<=330) {
    strokeWeight(3);
  } else {
    noStroke();
  }
  rect(2500+160, 280, 200, 100, 50);
  stroke(textFill1);
  textFont(font2);
  fill(textFill2);
  pushMatrix();
  textLeading(40);
  text("PLAY", 2500+160, 142);
  text("QUIT", 2500+160, 262);
  popMatrix();
  popMatrix();
  if (screenX<=-2470){
    screenX+=4;
    textFill1=0;
    textFill2=255;
    buttonFill1=color(0, 220, 0);
    buttonFill2=color(220, 0, 0);
  }
}
