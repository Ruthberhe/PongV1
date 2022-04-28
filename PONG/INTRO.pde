void intro() {
  background(black);
  textSize(150);
  fill(yellow);
  text("PONG", 230, 200);
  
  //begin button
  
  tactile(300, 250, 200, 100);
  strokeWeight(5);
  fill(yellow);
  rect(300, 250, 200, 100);
  fill(black);
  textSize(60);
  text("BEGIN", 320, 330);
  
  
  
  
  //player1
  fill(255);
  tactile(150, 450, 200, 100);
  fill(yellow);
  rect(150, 450, 200, 100);
  textSize(50);
  fill(black);
  text("1 PLAYER", 150, 510);
  
  
  //player2
  tactile(450, 450, 200, 100);
  fill(yellow);
  rect(450, 450, 200, 100);
  fill(black);
  text("2 PLAYER", 450, 510);
  
  
}

void introClicks() {
  if(mouseX>300 && mouseX<500 && mouseY>250 && mouseY<350){
    mode=GAME;
 
  }
  if(mouseX>150 && mouseX<350 && mouseY>450 && mouseY<550){
    AI=true;
    mode=GAME;
  }
  if(mouseX>450 && mouseX<650 && mouseY>450 && mouseY<550){
    AI=false;
    mode=GAME;
  }
  
}
