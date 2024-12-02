void OrangeBank() {
  b_save(width/2-300, height/2+250, 1);
  b_get(width/2+300,height/2+250,1);
  b_back(width-100, height-100);
  textSize(5*uiSize);
  fill(0);
  text("오렌지 은행", width/2, 200);
  image(orange, width/2-500, 200, 120, 120);
  myMoney(width/4-150, height/2);
  textBox(width/2, height/2);
  myDep(width*3/4+150, height/2, 1);
}

void PigBank() {
  b_save(width/2-300, height/2+250, 2);
  b_get(width/2+300,height/2+250,2);
  b_back(width-100, height-100);
  textSize(5*uiSize);
  fill(0);
  text("돼지 은행", width/2, 200);
  image(pig, width/2-500, 200, 120, 120);
  myMoney(width/4-150, height/2);
  textBox(width/2, height/2);
  myDep(width*3/4+150, height/2, 2);
}

void HamaBank() {
  b_save(width/2-300, height/2+250, 3);
  b_get(width/2+300,height/2+250,3);
  b_back(width-100, height-100);
  textSize(5*uiSize);
  fill(0);
  text("하마 은행", width/2, 200);
  image(hama, width/2-500, 200, 120, 120);
  myMoney(width/4-150, height/2);
  textBox(width/2, height/2);
  myDep(width*3/4+150, height/2, 3);
}

void myDep(float x, float y, int i) {
  imageMode(CENTER);
  image(resol, x, y, 400, 100);
  fill(0);
  textSize(1.0*uiSize);
  if (language == "korean") {
    if (i == 1) {
      String dep = String.format("%,d", int(depMoney_orange));
      text("예금액 : " + dep +"원", x, y);
    }
    if (i == 2) {
      String dep = String.format("%,d", int(depMoney_pig));
      text("예금액 : " + dep +"원", x, y);
    }
    if (i == 3) {
      String dep = String.format("%,d", int(depMoney_hama));
      text("예금액 : " + dep +"원", x, y);
    }
  }
  if (language == "english") {
    if (i == 1) {
      String dep = String.format("%,d", int(depMoney_orange));
      text("Saved : " + dep +"won", x, y);
    }
    if (i == 2) {
      String dep = String.format("%,d", int(depMoney_pig));
      text("Saved : " + dep +"won", x, y);
    }
    if (i == 3) {
      String dep = String.format("%,d", int(depMoney_hama));
      text("Saved : " + dep +"won", x, y);
    }
  }
}

void textBox(float x, float y) {
  fill(255);
  strokeWeight(3);
  stroke(0);
  rectMode(CENTER);
  rect(x, y, 500, 100);
  fill(0);
  textSize(2*uiSize);
  if (language == "korean") text("원", x+200, y);
  if (language == "english") text("won", x+200, y);
  if (texting == true) {
    if (textLine == 1) {
      line(x+160, y+40, x+160, y-40);
      textLine = 0;
    } else textLine = 1;
  }
  String to = String.format("%,d", textOutput);
  text(to, x, y);
  if (mouseX <= x+250 && mouseX >= x-250 && mouseY <= y+50 && mouseY >= y-50) {
    cursorMode = 2;
    textCursorMode = true;
  } else textCursorMode = false;
  if (mousePressed) {
    if (mouseX <= x+250 && mouseX >= x-250 && mouseY <= y+50 && mouseY >= y-50) {
      texting = true;
    } else {
      texting = false;
      textCursorMode = false;
    }
  }
}

void keyReleased() {
  if ((key != '') && (key == '0' || key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' || key == '8' || key == '9')) {
    if (texting == true) {
      if (textValue < 8) {
        textValue++;
        for (int i=8; i >= 1; i--) textInt[i] = textInt[i-1];
        if (key == '0') textInt[1] = 0;
        if (key == '1') textInt[1] = 1;
        if (key == '2') textInt[1] = 2;
        if (key == '3') textInt[1] = 3;
        if (key == '4') textInt[1] = 4;
        if (key == '5') textInt[1] = 5;
        if (key == '6') textInt[1] = 6;
        if (key == '7') textInt[1] = 7;
        if (key == '8') textInt[1] = 8;
        if (key == '9') textInt[1] = 9;
        textOutput = 0;
        for (int i=8; i >= 1; i--) {
          if (textInt[i] != -1) {
            if (i == 8) textOutput += 10000000*textInt[8];
            if (i == 7) textOutput += 1000000*textInt[7];
            if (i == 6) textOutput += 100000*textInt[6];
            if (i == 5) textOutput += 10000*textInt[5];
            if (i == 4) textOutput += 1000*textInt[4];
            if (i == 3) textOutput += 100*textInt[3];
            if (i == 2) textOutput += 10*textInt[2];
            if (i == 1) textOutput += 1*textInt[1];
          }
        }
      }
    }
  }
  if (key == '') {
    if (texting == true) {
      if (textValue > 0) {
        textValue--;
        for (int i=0; i < 8; i++) textInt[i] = textInt[i+1];
        textInt[8] = -1;
        textOutput = 0;
        for (int i=8; i >= 1; i--) {
          if (textInt[i] != -1) {
            if (i == 8) textOutput += 10000000*textInt[8];
            if (i == 7) textOutput += 1000000*textInt[7];
            if (i == 6) textOutput += 100000*textInt[6];
            if (i == 5) textOutput += 10000*textInt[5];
            if (i == 4) textOutput += 1000*textInt[4];
            if (i == 3) textOutput += 100*textInt[3];
            if (i == 2) textOutput += 10*textInt[2];
            if (i == 1) textOutput += 1*textInt[1];
          }
        }
      }
    }
  }
}

int textOutput;
int textValue = 0;
int textInt[] = new int[9];

int textLine;
boolean textCursorMode = false;
boolean texting = false;
