//Yaelle Ritch
//1-3a

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


int mode;
final int intro=0;
final int game=1;
final int pause=2;
final int gameover=3;
final int options=4;

//music
Minim minim;
AudioPlayer coinsound;
AudioPlayer gameoversound;
AudioPlayer bumpsound;
AudioPlayer mariosound;      

//font
PFont snowfont;
PFont snowflakes;
//images
PImage icicles;

//colours
//do a gradient background
color lightestblue = #AFBCDB;
color lightblue = #6B8DEA;
color blue = #2630D3;
color darkblue = #111D6A;
color lightteal = #A6E8F5;
color teal = #46D5F0;

//game variables
float x,y,d;
float vx,vy;
int score, lives;
int highscore;

 //options variables
  float slidery;
  float thickness;
  boolean snowflakeHon;
boolean snowflakeTon;
boolean snowflakeaon;
boolean snowflakeBon;




void setup() {
  size(800, 700);
  mode =intro;
  //music
  minim=new Minim(this);
  coinsound=minim.loadFile("coin.wav");
  gameoversound=minim.loadFile("gameover.wav");
  bumpsound=minim.loadFile("bump.wav");
  mariosound=minim.loadFile("mario bros theme.mp3");
  //font 
  textAlign(CENTER, CENTER);
  snowfont=createFont("SnowtopCaps.otf",100);
  snowflakes=createFont("snowflakes.ttf",100);
  //pictures
  icicles = loadImage("icicles.png");
  //target initialization
  x=width/2;
  y=height/2;
  d=100;
  vx=random(-5,5);
  vy=random(-5,5);
  score=0;
  lives=3;
  highscore=0;
  //options
  thickness=20;
  snowflakeHon = false;
  snowflakeTon = false;
  snowflakeaon = false;
  snowflakeBon = false;
  
  //options tab
slidery=500;
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  }else if (mode==options){
    options();
  }
   println("ERROR: Mode="+mode);
  
}
