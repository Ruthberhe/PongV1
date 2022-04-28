void pause() {
textSize(80);
  fill(yellow);
  text("GAME" , 200, 400);
  fill(black);
  text("PAUSED", 400, 400);
  
  
  tactile(300, 450, 200, 100);
  fill(0);
  rect(300, 450, 200, 100);
  textSize(40);
  fill(255);
  text("RESTART", 330, 510);
}

void pauseClicks() {
  if (mouseX >0& mouseX <50 && mouseY>0 && mouseY<50) {
    mode=GAME;
    }
      if(mouseX>300 && mouseX<500 && mouseY>450 && mouseY<550){
  mode=INTRO;
  reset();
  }
    
}
