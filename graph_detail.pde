void mousePressed() {
  if (screenMode.contains("hoga 0")) {
    if (mouseX <= graphX+2.5*graphSize && mouseX >= graphX-2.5*graphSize && mouseY >= graphY-1.5*graphSize && mouseY <= graphY+1.5*graphSize) {
      screenMode = "detail 0";
    }
  }
  if (screenMode.contains("hoga 1")) {
    if (mouseX <= graphX+2.5*graphSize && mouseX >= graphX-2.5*graphSize && mouseY >= graphY-1.5*graphSize && mouseY <= graphY+1.5*graphSize) {
      screenMode = "detail 1";
    }
  }
  if (screenMode.contains("hoga 2")) {
    if (mouseX <= graphX+2.5*graphSize && mouseX >= graphX-2.5*graphSize && mouseY >= graphY-1.5*graphSize && mouseY <= graphY+1.5*graphSize) {
      screenMode = "detail 2";
    }
  }
  if (screenMode.contains("hoga 3")) {
    if (mouseX <= graphX+2.5*graphSize && mouseX >= graphX-2.5*graphSize && mouseY >= graphY-1.5*graphSize && mouseY <= graphY+1.5*graphSize) {
      screenMode = "detail 3";
    }
  }
  if (screenMode.contains("hoga 4")) {
    if (mouseX <= graphX+2.5*graphSize && mouseX >= graphX-2.5*graphSize && mouseY >= graphY-1.5*graphSize && mouseY <= graphY+1.5*graphSize) {
      screenMode = "detail 4";
    }
  }
  if (screenMode.contains("hoga 5")) {
    if (mouseX <= graphX+2.5*graphSize && mouseX >= graphX-2.5*graphSize && mouseY >= graphY-1.5*graphSize && mouseY <= graphY+1.5*graphSize) {
      screenMode = "detail 5";
    }
  }
}

void detailGraph(int n) {
  background(255, 250, 250);
  for (int x=0; x+width/30<=width; x+=width/30) {
    stroke(50, 50, 50, 50);
    strokeWeight(3);
    line(x, 0, x, height);
  }
  for (int y=0; y+height/20<=height; y+=height/20) {
    stroke(50, 50, 50, 50);
    strokeWeight(3);
    line(0, y, width, y);
  }
  float max;
  float min;
  float down = height;
  float right = width;
  max = (round(price[ran[n]]/10000)*10000)*2;
  min = (round(price[ran[n]]/10000)*10000)/2;
  float gap = max-min;
  float u= width/width;
  for (int i=0; i<1919; i++) {
    if (graphPrice[ran[n]][i] != -1) {
      strokeWeight(6);
      stroke(0);
      point(right-u*i, (down-((width/2)*(graphPrice[ran[n]][i] / gap)))+50);
    }
  }
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(50, 50, 50, 50);
  if (language == "korean") {
    textSize(5*uiSize);
    text("돌아가려면 ESC를 누르세요", width/2, height/2);
  }
  if (language == "english") {
    textSize(5*uiSize);
    text("Press 'ESC' to go back", width/2, height/2);
  } 
  //추세선
  int bin=50;
  for (int m=bin; 1919+bin-(m+bin) >= 0; m+=bin) {
    if (graphPrice[ran[n]][1919+bin-m] != -1) {
      if (graphPrice[ran[n]][1919+bin-m] < graphPrice[ran[n]][1919+bin-(m+bin)]) stroke(255, 0, 0, 160);
      else stroke(0, 0, 255, 160);
      line(right-u*(1919+bin-m), (down-((width/2)*(graphPrice[ran[n]][1919+bin-m] / gap)))+50, right-u*(1919+bin-(m+bin)), (down-((width/2)*(graphPrice[ran[n]][1919+bin-(m+bin)] / gap)))+50);
    }
  }
}
