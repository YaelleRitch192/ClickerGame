void pause(){
  strokeWeight(3);
  stroke(255);
  fill(teal);
  tactile(100,100,50);
  circle(100,100,100);
  fill(0);
 triangle(85,125,85,75,125,100); 
 mariosound.pause();
 textFont(snowfont);
 textSize(70);
  text("pause" ,400,400);
}
void pauseclicks(){
  if(dist(mouseX,mouseY,100,100)<50) {
    mode = game;
    
  }
}
