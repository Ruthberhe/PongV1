void gameover() {
    textSize(80);
    reset();
  if (leftscore > rightscore) {
    fill(yellow);
    text("LEFT WINS", 50, 300);
  } else {
    fill(black);
    text("RIGHT WINS", 400, 300);
  }
  tactile(300, 450, 200, 100);
  fill(0);
  rect(300, 450, 200, 100);
  textSize(40);
  fill(255);
  text("RESTART", 330, 500);
}


void gameoverClicks() {
  reset();
  if(mouseX>300 && mouseX<500 && mouseY>450 && mouseY<550){
  mode=INTRO;
  }
}

void tactile(int x, int y, int w, int h){
  if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
    stroke(black);
  }else{
    stroke(255);
  }
}
