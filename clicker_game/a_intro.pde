void intro(){
  background(lightestblue);
   image(icicles, 10, 0, 800, 800);
  textFont(snowfont);
 textSize(75);
 fill(0);
 text("Clicker Game" ,400,200);
  fill(lightblue);
  strokeWeight(5);
  
  //start button
  if(mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600){
    stroke(blue);
  }else{ stroke(255); }
    rect(300,500,200,100);
    fill(0);
    textSize(65);
  text("start" ,400,547);
  
 //options button
 fill(lightblue);
 if(mouseX>300 && mouseX<500 && mouseY>350 && mouseY<450){
    stroke(blue);
  }else{ stroke(255); }
 rect(300,350,200,100);
 fill(0);
 textSize(50);
 text("Options",400,397);
 
/////////////////////////////////////////make image transparent

  

}
void introclicks(){
  
  if(mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600){
    mode = game;
  }
  if(mouseX>300 && mouseX<500 && mouseY>350 && mouseY<450){
    mode=options;
  }
}
