import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;




//mode framework
int mode; 
final int INTRO=1;
final int GAME=2 ;
final int PAUSE=3;
final int GAMEOVER=4;

//entity variables

float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
float  vx, vy;

//keyboard variables
  boolean wkey, skey, upkey, downkey;
  
  //scoring
int leftscore, rightscore, timer;

//player
boolean  AI;

//colorpallete
color yellow =#FEFF00;
color black  =#000000;
color brown  =#3C1518;
color burgundi =#69140E;
color lightyellow =#F2F3AE;
color sunset =#D38936;

//sound vaiables
Minim minim;
AudioPlayer bounce, cong;

void setup() {
  size(800, 600);
  mode=INTRO;
 
  //initiallize paddles
  leftx=0;
  lefty =height/2;
  leftd=200;
  rightx=width;
  righty=height/2;
  rightd=200;
  
  //initiallize ball
  ballx=width/2;
  bally =height/2;
  balld=100;
  
  //move ball
  vx=random(-2,2);
  vy=random(-2,2);
  
  //innitialize keyboard variables
  wkey=skey=upkey=downkey=false;
  
  //score
 leftscore=0;
 rightscore=0;
  timer=100;
  
//player
AI=false;

//minim
minim=new Minim(this);
//bounce=minim.loadFile("bounce.wav");
cong=minim.loadFile("cong.mp3");
}
void draw() {
  if (mode==INTRO) {
    intro();
   }else if (mode==GAME) {
    game();
  }else if (mode==PAUSE) {
    pause();
  }else if (mode==GAMEOVER) {
    gameover();
  }else {
    println("Mode error; " +mode);
  }
  
}
