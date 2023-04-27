void levelSelect() {
  background(135, 205, 235);
  rectMode(CENTER);
  noStroke();
  //second background
  fill(255, 255, 255);
  rect(400, 250, 600, 400, 50);
  //title box
  fill(250, 250, 50);
  rect(400, 50, 300, 50, 50);
  //buttons
  fill(250, 250, 100);
  stroke(0);
  if (mouseX>=140 && mouseX<=240 && mouseY>=90 && mouseY<=190) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(190, 140, 100, 100, 50); //slide 1 button
  noStroke();
  stroke(0);
  if (mouseX>=280 && mouseX<=380 && mouseY>=90 && mouseY<=190) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(330, 140, 100, 100, 50); //slide 2 button
  noStroke();
  stroke(0);
  if (mouseX>=420 && mouseX<=520 && mouseY>=90 && mouseY<=190) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(470, 140, 100, 100, 50); //slide 3 button
  noStroke();
  stroke(0);
  if (mouseX>=560 && mouseX<=660 && mouseY>=90 && mouseY<=190) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(610, 140, 100, 100, 50); //slide 4 button
  noStroke();
  stroke(0);
  if (mouseX>=140 && mouseX<=240 && mouseY>=210 && mouseY<=310) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(190, 260, 100, 100, 50); //slide 5 button
  noStroke();
  stroke(0);
  if (mouseX>=280 && mouseX<=380 && mouseY>=210 && mouseY<=310) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(330, 260, 100, 100, 50); //slide 6 button
  noStroke();
  stroke(0);
  if (mouseX>=420 && mouseX<=520 && mouseY>=210 && mouseY<=310) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(470, 260, 100, 100, 50); //slide 7 button
  noStroke();
  stroke(0);
  if (mouseX>=560 && mouseX<=660 && mouseY>=210 && mouseY<=310) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(610, 260, 100, 100, 50); //slide 8 button
  noStroke();
  stroke(0);
  if (mouseX>=140 && mouseX<=240 && mouseY>=330 && mouseY<=430) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(190, 380, 100, 100, 50); //slide 9 button
  noStroke();
  stroke(0);
  if (mouseX>=280 && mouseX<=380 && mouseY>=330 && mouseY<=430) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(330, 380, 100, 100, 50); //slide 10 button
  noStroke();
  stroke(0);
  if (mouseX>=420 && mouseX<=520 && mouseY>=330 && mouseY<=430) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(470, 380, 100, 100, 50); //slide 11 button
  noStroke();
  stroke(0);
  if (mouseX>=560 && mouseX<=660 && mouseY>=330 && mouseY<=430) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(610, 380, 100, 100, 50); //slide 12 button
  noStroke();
  stroke(0);
  //text
  textFont(font2);
  textAlign(CENTER, TOP);
  fill(0);
  text("SELECT LEVEL", 400, 30);
  textFont(font);
  text("1",190, 125); //slide 1
  text("2",330, 125); //slide 2
  text("3",470, 125); //slide 3
  text("4",610, 125); //slide 4
  text("5",190, 245); //slide 5
  text("6",330, 245); //slide 6
  text("7",470, 245); //slide 7
  text("8",610, 245); //slide 8
  text("9",190, 365); //slide 9
  text("10",330, 365); //slide 10
  text("11",470, 365); //slide 11
  text("12",610, 365); //slide 12
  //Home Button
  fill(255);
  rectMode(CENTER);
  if (mouseX>=10 && mouseX<=90 && mouseY>=10 && mouseY<=90) {  //when the mouse is within these coordinates the border of the button get bolded
    strokeWeight(2);
  } else {  //when the mouse is outside these coordinates there is no border
    noStroke();
  }
  rect(50, 50, 80, 80, 50);
  fill(0);
  triangle(25, 45+5, 50, 20+5, 75, 45+5);
  rectMode(CORNER);
  rect(35, 45+5, 10, 20);
  rect(35+20, 45+5, 10, 20);
}
