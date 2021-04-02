

void game(){
  background(lightteal);
  fill(0);
  textFont(snowfont);
 textSize(40);
  text("score:" +score, width/2,25);
  text("lives:" + lives, width/2,60);
  mariosound.play();
 
  //pause button
  strokeWeight(3);
  stroke(255);
  fill(teal);
  tactile(100,100,50);
  circle(100,100,100);
  fill(255);
  rect(80,80,10,40);
  rect(115,80,10,40);
  
  //target
  fill(255);
  stroke(255);
  strokeWeight(thickness);
  circle(x,y,d);
  fill(0);
  textFont(snowflakes);
 if (snowflakeHon == true ) {
    text("H", x,y);
  }
  //button T
  if (snowflakeTon == true ) {
    text("T", x, y);
  }
   //button a
  if (snowflakeaon == true ) {
    text("a", x, y);
  }
   //button B
  if (snowflakeBon == true ) {
    text("B", x, y);
  }
 
  
  
  //moving
  x=x+vx;
  y=y+vy;
  
  //bounce
  if(x<d/2||x>width-d/2){
    vx=vx *-1;
  }
  if(y<d/2||y>height-d/2){
    vy=vy*-1;
  }
}
void gameclicks(){
  if(dist(mouseX,mouseY,x,y)<50){
    score=score+1;
    vx=vx*1.1;
    vy=vy*1.1;
    coinsound.rewind();
    coinsound.play();
  }else if(dist(mouseX,mouseY,100,100)<50) {
    mode = pause;
  }else{
    lives=lives-1;
    bumpsound.rewind();
    bumpsound.play();
    if(lives==0) mode=gameover;
  }
 
}
