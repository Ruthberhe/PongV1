void game() {
  
  fill(0);
  stroke(black);
  rect(0, 0, 400, 600);
  fill(yellow);
  stroke(yellow);
  rect(400, 0, 800, 600);
 if (mouseX >0 && mouseX <50 && mouseY >0 && mouseY <50) {
    strokeWeight(4);
  } else {
    strokeWeight(2);
  }
 stroke(0);
  fill(255);
  square(0, 0, 50);
  rect(10, 10, 10, 30);
  rect(30, 10, 10, 30);
  
  //paddles
  strokeWeight(4);
  fill(yellow);
  stroke(255);
  circle(leftx,lefty, leftd);
  
  fill(black);
  stroke(255);
  circle(rightx, righty, rightd);
  
  //move paddles
    //LEFT
  if(lefty<100){
    lefty=100;
  }
  if(lefty>500){
    lefty=500;
  }
  if (wkey==true) lefty=lefty-5;
  if (skey==true) lefty=lefty+5;
    
    //RIGHT
  if(righty<100){
    righty=100;
  }
  if(righty>500){
     righty=500;
  }
  if(AI == false) {
  if(upkey==true) righty=righty-5;
  if(downkey==true) righty=righty+5;
  }else {
   righty=bally;
   
  
 }
   
  
  //ball
  strokeWeight(3);
  stroke(255);
  fill(burgundi);
  circle(ballx, bally, balld);
    

  
  //move ball
  if(timer<0){
  ballx=ballx+vx;
  bally=bally+vy;
  }
  if(bally<50){
    bally=50;
  }
  if(bally>550){
    bally=550;
  }
  
  //bounce ball
 if (bally <= balld/2 || bally >=height -balld/2) {
   vy=vy*-1;
 }
    if(dist(ballx, bally, leftx, lefty)<=leftd/2 + balld/2){
    vx=(ballx-leftx)/15;
    vy=(bally-lefty)/15;
    cong.rewind();
    cong.play();
    }
    
  if (dist(ballx, bally, rightx, righty)<=rightd/2 + balld/2) {
    vx=(ballx-rightx)/15;
    vy=(ballx-righty)/15;
    cong.rewind();
    cong.play();
    }
   
   //scoreboard
   textSize(50);
   fill(yellow);
   text(leftscore, width/4, 100);
   fill(black);
   text(rightscore, 3*width/4, 100);
   timer=timer-1;
  
  
  //scoring
  if(ballx < 0){
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }
  
  if(ballx>800) {
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }
 if(leftscore>2 || rightscore>2){
    mode=GAMEOVER;
 }
  

}

void gameClicks(){
  if (mouseX >0& mouseX <50 && mouseY>0 && mouseY<50) {
    mode=PAUSE;
  }
  }
  
  
