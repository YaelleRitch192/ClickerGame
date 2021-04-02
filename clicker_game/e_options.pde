


void options() {
  textFont(snowfont);
  background(lightestblue);
  stroke(255);
  fill(0);
  text("Options", 400, 100);
  buttons(0, 0);
  slider(0, 0);
  indicator(0, 0);

  //Tactile
  fill(255);
  if (mouseX>600 && mouseX<750 && mouseY>550 && mouseY<650) {
    stroke(blue);
  } else { 
    stroke(255);
  }
  rect(600, 550, 150, 100);
  fill(0);
  textFont(snowfont);
  textSize(60);
  text("done", 675, 600);
}


void buttons(int x, int y) {
  textFont(snowflakes);
  fill(255);
  tactile(75, 250, 50);
  circle(75, 250, 100);
  tactile(225, 250, 50);
  circle(225, 250, 100);
  tactile(375, 250, 50);
  circle(375, 250, 100);
  tactile(525, 250, 50);
  circle(525, 250, 100);
  tactile(675, 250, 50);
  circle(675, 250, 100);
  fill(0);
  text("B", 675, 250);
  text("H", 225, 250);
  text("T", 375, 250);
  text("a", 525, 250);
}

void slider(int x, int y) {
  fill(lightblue);
  stroke(lightblue);
  thickness=map(slidery, 400, 600, 0, 40);
  strokeWeight(thickness);
  line (100, 400, 100, 600);
  tactile(100, slidery, 25);
  circle(100, slidery, 50);
  strokeWeight(3);
  tactile(0, 0, 0);
}

void indicator(int x, int y) {
  strokeWeight(thickness);
  stroke(lightblue);
  circle(400, 500, 100);
  strokeWeight(3);
  //button H
  if (snowflakeHon == true ) {
    fill(blue);
    text("H", 225, 250);
    fill(0);
    text("H", 400, 500);
  }
  //button T
  if (snowflakeTon == true ) {
    fill(blue);
    text("T", 375, 250);
    fill(0);
    text("T", 400, 500);
  }
   //button a
  if (snowflakeaon == true ) {
    fill(blue);
    text("a", 525, 250);
    fill(0);
    text("a", 400, 500);
  }
   //button B
  if (snowflakeBon == true ) {
    fill(blue);
    text("B", 675, 250);
    fill(0);
    text("B", 400, 500);
  }
}

void optionsclicks() {
  if (mouseX>600 && mouseX<750 && mouseY>550 && mouseY<650) {
    mode=intro;
  }
  if (mouseX>72&&mouseX<125&&mouseY>400&&mouseY<600) {
    slidery=mouseY;
  }
  textFont(snowflakes);
  if (dist(75, 250, mouseX, mouseY)<50) {
    snowflakeHon = false;
    snowflakeTon=false;
    snowflakeaon=false;
    snowflakeBon=false;
  }
  textFont(snowflakes);
  if (dist(255, 250, mouseX, mouseY)<50) {
    snowflakeHon = !snowflakeHon;
    snowflakeTon=false;
    snowflakeaon=false;
    snowflakeBon=false;
  }
  if (dist(375, 250, mouseX, mouseY)<50) {
    text("T", 400, 500);
    snowflakeTon = !snowflakeTon;
    snowflakeHon=false;
    snowflakeBon=false;
    snowflakeaon=false;
  }
  if (dist(525, 250, mouseX, mouseY)<50) {
    text("A", 400, 500);
    snowflakeaon = !snowflakeaon;
    snowflakeHon=false;
    snowflakeTon=false;
    snowflakeBon=false;
  }
  if (dist(675, 250, mouseX, mouseY)<50) {
    text("B", 400, 500);
    snowflakeBon = !snowflakeBon;
    snowflakeHon=false;
    snowflakeTon=false;
    snowflakeaon=false;
  }
}
void mouseDragged() {
  if (mouseX>72&&mouseX<125&&mouseY>400&&mouseY<600) {
    slidery=mouseY;
  }
}
