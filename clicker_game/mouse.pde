void mouseReleased(){
  if (mode==intro) {
    introclicks();
  } else if (mode==game) {
    gameclicks();
  } else if (mode == pause) {
    pauseclicks();
  } else if (mode==gameover) {
    gameoverclicks();
  }else if(mode==options){
    optionsclicks();
  }
}


void tactile(float x, float y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(blue);
  } else {
    stroke(255);
  }
}
