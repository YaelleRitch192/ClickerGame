void gameover(){
  strokeWeight(3);
  background(darkblue);
  mariosound.pause();
  gameoversound.play();
  //fill(203,0,3);
  fill(255);
  textSize(70);
  textFont(snowfont);
  text("Game Over" ,400,200);
//snowman
snowman(0,0);
smallsnowmanleft(0,0);
smallsnowmanright(0,0);

//high score
  text("high score:"+ highscore, 375,350);
  fill(blue);
  if(mouseX>525&&mouseX<750&&mouseY>550&&mouseY<650){ stroke(255);}else{stroke(lightblue);}
  rect(525,550,225,100);
  textSize(50);
  fill(255);
  text("restart", 640,600);
  
  if(highscore<score){
   highscore=score; 
  }

}
void gameoverclicks(){
  if(mouseX>525&&mouseX<750&&mouseY>550&&mouseY<650){
  mode=intro;
  lives=3;
  score=0;
  vx=random(-5,5);
  vy=random(-5,5);
  x=width/2;
  y=height/2;
  }
}

void snowman (int x, int y){
  fill(255);
  stroke(255);
  circle(250,600,100);
  circle(250,525,75);
  fill(0);
  strokeWeight(0);
  stroke(0);
  circle (235,525,10);
  circle (265,525,10);
  rect(200,490,100,10);
  rect(225,450,50,40);
  circle(250,600,10);
  circle(250,580,10);
  circle(250,620,10);
  fill(255,86,8);
  triangle(250,530,269,535,250,539); 
  fill(255);
  strokeWeight(4);
}

void smallsnowmanleft(int x, int y){
  fill(255);
  stroke(255);
  circle(100,615,70);
  circle(100,558,45);
  fill(0);
  strokeWeight(0);
  stroke(0);
  circle (95,558,5);
  circle (105,558,5);
  circle(100,610,7);
  circle(100,625,7);
  circle(100,595,7);
  fill(255,86,8);
  triangle(100,562,110,567,100,569); 
  fill(255);
  strokeWeight(4);
}

void smallsnowmanright(int x, int y){
  fill(255);
  stroke(255);
  circle(400,615,70);
  circle(400,558,45);
  fill(0);
  strokeWeight(0);
  stroke(0);
  circle (395,558,5);
  circle (405,558,5);
  circle(400,610,7);
  circle(400,625,7);
  circle(400,595,7);
  fill(255,86,8);
  triangle(400,562,411,566,400,568); 
  fill(255);
  strokeWeight(4);
}
