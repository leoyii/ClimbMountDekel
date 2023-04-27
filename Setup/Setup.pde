/*
Name: Leo Yi, Matthew Kalman, Adam Altenberg
Date: 05/16/2022
Teacher: Ms. Basaraba
Description: a mounting climbing adventure story game where you explore different altitudes of a mountain.
*/
 //variable declaration
PFont font;
PFont font2;
PFont font3;                                //Stores the 6 size font
PFont font4;
String userName;
int slideCount = 0;                         //Stores the count of what slide the game is on
int timer = 0;                              //Stores the value of the timer on slide 0
int bottleX;                                //Stores the X coordinate for the bottle
int bottleY;                                //Stores the Y coordinate for the bottle
int lightX;                                 //Stores the X coordinate for the light
int lightY;                                 //Stores the Y coordinate for the light
int compassX;                               //Stores the X coordinate for the compass
int compassY;                               //Stores the Y coordinate for the compass
int cloudX=-200;                            //Stores the X coordinate for the first cloud
int cloudX2=-800;                           //Stores the X coordinate for the second cloud
int sW = 1;                                 //Stores the strokeweight number
int armY=340;                               //Stores the Y coordinate for the arm
int moneyY=335;                             //Stores the Y coordinate for the money
int ticketY=240;                            //Stores the Y coordinate for the ticket
int snowPersonX=0;                          //Stores the X coordinate of the person on slide 11
int snowY=0;                                //Stores the Y coordinate of the snowflakes on slide 11
int icicleY=0;                              //Stores the Y coordinate of the falling icile on slide 12
int caveTimer=0;                            //Stores the timer that tells the person when to start moving again on slide 12
int dragonX=375;                            //Stores the X coordinate of the dragon on slide 13
int fireFill=255;                           //Stores the transparency of the fireball on slide 13
int explosionFill=255;                      //Stores the transparency of the explosion on slide 13
int flagFill=0;                             //Stores the transparency of the flag on slide 14
int armFill=0;                              //Stores the transparency of the replacement to the moving arm on slide 14
int armFill2=255;                           //Stores the transparency of the replacement to the original arm on slide 14
int peakTimer=0;                            //Stores the timer of when the person should start moving again after placing the flag on slide 14
int peakTimer2=0;                           //Stores the timer of when the person should start moving again after taking a selfie on slide 14
float birdX = 0;                            //Stores the X coordinate of the bird on slide 0
float wingY = 0;                            //Stores the Y coordinate of the bird's wing on slide 0
float loadingX = 0;                         //Stores the X coordinate of the loading bar on slide 0
float screenX = 0;                          //Stores the X coordinate of the screen on slide 0
float menuCloudX = 0;                       //Stores the X coordinate of the clouds on slide 0
float menuCloudX2 = 0;                      //Stores the X coordinate of the other clouds on slide 0
float city1PersonX = 700;                   //Stores the X coordinate for the person
float armX=345;                             //Stores the X coordinate for the arm
float moneyX=330;                           //Stores the X coordinate for the money
float planeX=100;                           //Stores the X coordinate for the plane
float planeY;                               //Stores the Y coordinate for the plane
float ticketX=360;                          //Stores the X coordinate for the ticket
float rightLegX=775;                        //Stores the right leg X coordinate on slide 3 - city
float leftLegX=745;                         //Stores the left leg X coordinate on slide 3 - city
float campPersonX = 0;                      //
float campLegX = 0;                         //
float campLegX2 = 0;                        //
float campArmX = 0;                         //
float campArmX2 = 0;                        //
float jungleSnakeX1 = 0;                    //
float jungleSnakeX2 = 0;                    //
Float rockyPersonX = 0.0;                   //
Float rockyPersonY = 0.0;                   //
Float riverPersonY = 0.0;                   //
float pirahnaY = 0;                         //
float riverLegY = 0;                        //
float riverLegY2 = 0;                       //
float snowPersonY=0;                        //Stores the Y coordinate of the person on slide 10
float snowX=0;                              //Stores the Y coordinate of the snowflakes on slide 10
float cavePersonX=0;                        //Stores the X coordinate of the person on the slide 11
float cavePersonY=0;                        //Stores the Y coordinate of the person on the slide 11
float caveLeg1=0;                           //Stores the X coordinate of the left leg of the person on slide 12
float caveLeg2=0;                           //Stores the X coordinate of the right leg of the person on slide 12
float deepCavePersonRotate=0;               //Rotates the person when it gets hit by the fire on slide 13
float fireX=620;                            //Changes the X coordinate of the fire on slide 13
float fireY=215;                            //Stores the y coordinate of the fire on slide 13
float fireScale=0.5;                        //Stores the scale of the fireball on slide 13
float explosionX=15;                        //Stores the X coordinate of the explosion on slide 13
float explosionY=300;                       //Stores the Y coordinate of the explosion on slide 13
float explosionScale=1;                     //Stores the scale of the explosion on slide 13
float peakPersonX=0;                        //Stores the X coordinate of the person on slide 14
float peakPersonY=0;                        //Stores the Y coordinate of the person on slide 14
float peakArmRotate=0;                      //Stores the rotation of the person's moving arm on slide 14
float peakPersonRotate=0;                   //Stores the rotation of the person on slide 14
float peakLeg1=0;                           //Stores the X value of the person's left arm and leg
float peakLeg2=0;                           //Stores the X value of the person's right arm and leg
boolean userInput = true;                   //
boolean wingDown = true;                    //
boolean jungleButton1;                      //
boolean jungleButton2;                      //
color loadingFill1 = color(135, 205, 235);  //
color loadingFill2 = color(135, 205, 235);  //
color loadingFill3 = color(135, 205, 235);  //
color textFill1 = color(135, 205, 235);     //
color textFill2 = color(135, 205, 235);     //
color buttonFill1 = color(135, 205, 235);   //
color buttonFill2 = color(135, 205, 235);   //
//setup
void setup() {
  size(800, 500);                           //Stores the 6 size font
  font=loadFont("Calibri-48.vlw");          //Stores the 6 size font
  font2=loadFont("Calibri-Bold-48.vlw");    //Stores the 6 size font
  font3=loadFont("Calibri-6.vlw");          //Stores the 6 size font
  font4 = loadFont("Calibri-20.vlw");       //Stores the 6 size font
}
//draw
void draw() {
  splashScreen();
  if (slideCount==0) {
    splashScreen();
  } else if (slideCount==1) {
    levelSelect();
  } else if (slideCount==2) {
    intro();
  } else if (slideCount==3) {
    city1();
  } else if (slideCount==4) {
    city2();
  } else if (slideCount==5) {
    airport();
  } else if (slideCount==6) {
    plane();
  } else if (slideCount==7) {
    baseCamp();
  } else if (slideCount==8) {
    jungle();
  } else if (slideCount==9) {
    river();
  } else if (slideCount==10) {
    rocky();
  } else if (slideCount==11) {
    snow();
  } else if (slideCount==12) {
    cave();
  } else if (slideCount==13) {
    deepCave();
  } else if (slideCount==14) {
    peak();
  } else if (slideCount==15) {
    end();
  }
}
//Key inputs
void keyPressed() {
  if (slideCount==0 || slideCount==2 || slideCount==3 || slideCount==4 || slideCount==5 || slideCount==6 || slideCount==7 || slideCount==10 || slideCount==11 || slideCount==14) {
    if (key==ENTER||key==RETURN) {
      slideCount++;
    } 
  }
  if(key=='r'||key=='R') {  //re-declaring all the variables to reset them when the you restart
    slideCount=0;
    bottleX=0;
    bottleY=0; 
    lightX=0; 
    lightY=0; 
    compassX=0; 
    compassY=0;
    cloudX=-200; 
    cloudX2=-800;
    sW = 1; 
    armY=340; 
    moneyY=335;
    ticketY=240; 
    birdX = 0;
    wingY = 0;
    loadingX = 0;
    screenX = 0;
    menuCloudX = 0;
    menuCloudX2 = 0;
    city1PersonX = 700; 
    armX=345; 
    moneyX=330; 
    planeX=100; 
    planeY=0;
    ticketX=360; 
    rightLegX=775;
    leftLegX=745;
    campPersonX = 0;
    jungleSnakeX1 = 0;
    jungleSnakeX2 = 0;
    rockyPersonX = 0.0;
    rockyPersonY = 0.0;
    riverPersonY = 0.0;
    pirahnaY = 0;
    riverLegY = 0;
    riverLegY2 = 0;
    snowPersonX=0;
    snowY=0;
    icicleY=0;
    caveTimer=0;
    dragonX=375;
    fireFill=255;
    explosionFill=255;
    flagFill=0;
    armFill=0;
    armFill2=255;
    peakTimer=0;
    peakTimer2=0;
    snowPersonY=0;                      
    snowX=0;                             
    cavePersonX=0;                        
    cavePersonY=0;                        
    caveLeg1=0;                         
    caveLeg2=0;                           
    deepCavePersonRotate=0;             
    fireX=620;                       
    fireY=215;                       
    fireScale=0.5;                
    explosionX=15;                     
    explosionY=300;                   
    explosionScale=1;           
    peakPersonX=0;                   
    peakPersonY=0;                     
    peakArmRotate=0;                 
    peakPersonRotate=0;                   
    peakLeg1=0;                           
    peakLeg2=0;          
    userInput = true;
    jungleButton1=false;
    jungleButton2=false;
    loadingFill1 = color(135, 205, 235);
    loadingFill2 = color(135, 205, 235);
    loadingFill3 = color(135, 205, 235);
    textFill1 = color(135, 205, 235);
    textFill2 = color(135, 205, 235);
    buttonFill1 = color(135, 205, 235);
    buttonFill2 = color(135, 205, 235);
  }
  if(key=='q'||key=='Q') {
    slideCount=15;
  }
}
//Mouse inputs
void mousePressed() {
  //city1 slide poster
  if (slideCount==3) {
    if (mouseX>=85&&mouseX<=135&&mouseY>=150&&mouseY<=210) { //Will make a bigger version of the poster pop up when the user hovers their mouse over the original
      //Big poster
      fill(255);
      rect(150,10,100,120);
      fill(0);
      textSize(12);
      text("CLIMB MOUNT DEKEL",155,30,90,40);
      textSize(18);
      text("WIN",155,70,90,40);
      textSize(16);
      text("$1 000 000",155,95,90,40);
    }
  }
  if (slideCount==4) {
    //Bottle
    if (mouseX>=70&&mouseX<=120&&mouseY>=40&&mouseY<=190) {
      bottleX=200;
      bottleY=100;
    }   
    //Flashlight
    if (mouseX>=320&&mouseX<=470&&mouseY>=30&&mouseY<=70) {
      lightY=175;
    } 
    //Compass
    if (mouseX>=615&&mouseX<=715&&mouseY>=100&&mouseY<=150) {
      compassX=-175;
      compassY=115;
    }
  }
  //menu slide buttons
  if (slideCount==0) {
    if (mouseX>=60 && mouseX<=260 && mouseY>=110 && mouseY<=210) {
      slideCount=2;
    }
    if (mouseX>=60 && mouseX<=260 && mouseY>=230 && mouseY<=330) {
      slideCount=15;
    }
  }
  //level select buttons
    if (mouseX>=10 && mouseX<=90 && mouseY>=10 && mouseY<=90 && slideCount==1) {  //when the mouse is within these coordinates you go to the main menu
      slideCount=0;
    }
    if (mouseX>=140 && mouseX<=240 && mouseY>=90 && mouseY<=190 && slideCount==1) {  //when the mouse is within these coordinates you go to slide 1
      slideCount=3;
    }
    if (mouseX>=280 && mouseX<=380 && mouseY>=90 && mouseY<=190 && slideCount==1) {  //when the mouse is within these coordinates you go to slide 2
      slideCount=4;
    }
    if (mouseX>=420 && mouseX<=520 && mouseY>=90 && mouseY<=190 && slideCount==1) {  //when the mouse is within these coordinates you go to slide 3
      slideCount=5;
    }
    if (mouseX>=560 && mouseX<=660 && mouseY>=90 && mouseY<=190 && slideCount==1) {  //when the mouse is within these coordinates you go to slide 4
      slideCount=6;
    }
    if (mouseX>=140 && mouseX<=240 && mouseY>=210 && mouseY<=310 && slideCount==1) {  //when the mouse is within these coordinates you go to slide 5
      slideCount=7;
    }
    if (mouseX>=280 && mouseX<=380 && mouseY>=210 && mouseY<=310 && slideCount==1) {  //when the mouse is within these coordinates you go to slide 6
      slideCount=8;
    }
    if (mouseX>=420 && mouseX<=520 && mouseY>=210 && mouseY<=310 && slideCount==1) {  //when the mouse is within these coordinates you go to slide 7
      slideCount=9;
    }
    if (mouseX>=560 && mouseX<=660 && mouseY>=210 && mouseY<=310 && slideCount==1) {  //when the mouse is within these coordinates you go to slide 10
      slideCount=10;
    }
    if (mouseX>=140 && mouseX<=240 && mouseY>=330 && mouseY<=430 && slideCount==1) {  //when the mouse is within these coordinates you go to slide 10
      slideCount=11;
    }
    if (mouseX>=280 && mouseX<=380 && mouseY>=330 && mouseY<=430 && slideCount==1) {  //when the mouse is within these coordinates the border of the button get bolded
      slideCount=12;
    }
    if (mouseX>=420 && mouseX<=520 && mouseY>=330 && mouseY<=430 && slideCount==1) {  //when the mouse is within these coordinates the border of the button get bolded
      slideCount=13;
    }
    if (mouseX>=560 && mouseX<=660 && mouseY>=330 && mouseY<=430 && slideCount==1) {  //when the mouse is within these coordinates the border of the button get bolded
      slideCount=14;
    }
  //jungle slide buttons
  if (slideCount==8) {
    if (mouseX>=190 && mouseX<=310 && mouseY>=280 && mouseY<=370) { //If the mouse is clicked on the first button, turn button true
      slideCount+=2;
    }
    if (mouseX>=510 && mouseX<=630 && mouseY>=280 && mouseY<=370) {//If the mouse is clicked on the second button, turn button true
      slideCount++;
    }
  }
  if (slideCount==12) {  //If statement for making sure the choice buttons only work on slide 12
    if (mouseX>=350&&mouseX<=450&&mouseY>=430&&mouseY<=480) {  //If statement for activating the choice buttons on slide 12
      slideCount+=2;
    } else if (mouseX>=540&&mouseX<=640&&mouseY>=430&&mouseY<=480) {
      slideCount++;
    }
  }
}
