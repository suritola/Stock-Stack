void b_bank(float x, float y) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
        mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
        image(empty_UI, x, y, 11*uiSize, 4.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(2.3*uiSize);
          text("은행", x+40, y);
        }
        if (language == "english") {
          textSize(2.2*uiSize);
          text("Bank", x+40, y);
        }
        image(bank, x-100, y, 70, 70);
        ButtonClick.play();
        screenMode = "bank";
      } else {
        image(empty_UI, x, y, 12*uiSize, 5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(2.5*uiSize);
          text("은행", x+40, y);
        }
        if (language == "english") {
          textSize(2.4*uiSize);
          text("Bank", x+40, y);
        }
        image(bank, x-100, y, 80, 80);
      }
    } else {
      image(empty_UI, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.5*uiSize);
        text("은행", x+40, y);
      }
      if (language == "english") {
        textSize(2.4*uiSize);
        text("Bank", x+40, y);
      }
      image(bank, x-100, y, 80, 80);
    }
  }
}

void sbank() {
  fill(0);
  textSize(4*uiSize);
  if (language == "korean") text("은행을 선택해 주세요.", width/2, 200);
  if (language == "english") text("Select your bank", width/2, 200);
  textOutput = 0;
  textValue = 0;
  b_orange(width*1/6, height/2+30);
  if (interest_orange > 0) fill(255, 0, 0);
  else if (interest_orange < 0) fill(0, 0, 255);
  else fill(0);
  if (language == "korean") {
    textSize(0.6*uiSize);
    text("이자율 : " + interest_orange + "%", width*1/6+25, height/2+60);
  }
  if (language == "english") {
    textSize(0.4*uiSize);
    text("Interest : " + interest_orange + "%", width*1/6+25, height/2+60);
  }
  b_pig(width*3/6, height/2+30);
  if (interest_pig > 0) fill(255, 0, 0);
  else if (interest_pig < 0) fill(0, 0, 255);
  else fill(0);
  if (language == "korean") {
    textSize(0.6*uiSize);
    text("이자율 : " + interest_pig + "%", width*3/6+30, height/2+60);
  }
  if (language == "english") {
    textSize(0.4*uiSize);
    text("Interest : " + interest_pig + "%", width*3/6+30, height/2+60);
  }
  b_hama(width*5/6, height/2+30);
  if (interest_hama > 0) fill(255, 0, 0);
  else if (interest_hama < 0) fill(0, 0, 255);
  else fill(0);
  if (language == "korean") {
    textSize(0.6*uiSize);
    text("이자율 : " + interest_hama + "%", width*5/6+30, height/2+60);
  }
  if (language == "english") {
    textSize(0.4*uiSize);
    text("Interest : " + interest_hama + "%", width*5/6+30, height/2+60);
  }
  b_back(width-100, height-100);
}

void b_orange(float x, float y) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
        mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
        image(empty_UI3, x, y, 11*uiSize, 4.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(0.9*uiSize);
          text("오렌지 은행", x+40, y);
        }
        if (language == "english") {
          textSize(0.8*uiSize);
          text("Orange Bank", x+40, y);
        }
        image(orange, x-100, y, 70, 70);
        ButtonClick.play();
        screenMode = "orangeBank";
      } else {
        image(empty_UI3, x, y, 12*uiSize, 5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.1*uiSize);
          text("오렌지 은행", x+40, y);
        }
        if (language == "english") {
          textSize(1.0*uiSize);
          text("Orange Bank", x+40, y);
        }
        image(orange, x-100, y, 80, 80);
      }
    } else {
      image(empty_UI3, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.1*uiSize);
        text("오렌지 은행", x+40, y);
      }
      if (language == "english") {
        textSize(1.0*uiSize);
        text("Orange Bank", x+40, y);
      }
      image(orange, x-100, y, 80, 80);
    }
  }
}

void b_pig(float x, float y) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
        mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
        image(empty_UI3, x, y, 11*uiSize, 4.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(0.9*uiSize);
          text("대규 은행", x+40, y);
        }
        if (language == "english") {
          textSize(0.8*uiSize);
          text("Pig Bank", x+40, y);
        }
        image(pig, x-100, y, 70, 70);
        ButtonClick.play();
        screenMode = "pigBank";
      } else {
        image(empty_UI3, x, y, 12*uiSize, 5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.1*uiSize);
          text("대규 은행", x+40, y);
        }
        if (language == "english") {
          textSize(1.0*uiSize);
          text("Pig Bank", x+40, y);
        }
        image(pig, x-100, y, 80, 80);
      }
    } else {
      image(empty_UI3, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.1*uiSize);
        text("대규 은행", x+40, y);
      }
      if (language == "english") {
        textSize(1.0*uiSize);
        text("Pig Bank", x+40, y);
      }
      image(pig, x-100, y, 80, 80);
    }
  }
}

void b_hama(float x, float y) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
        mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
        image(empty_UI3, x, y, 11*uiSize, 4.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(0.9*uiSize);
          text("하마 은행", x+40, y);
        }
        if (language == "english") {
          textSize(0.8*uiSize);
          text("Hippo Bank", x+40, y);
        }
        image(hama, x-100, y, 70, 70);
        ButtonClick.play();
        screenMode = "hamaBank";
      } else {
        image(empty_UI3, x, y, 12*uiSize, 5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.1*uiSize);
          text("하마 은행", x+40, y);
        }
        if (language == "english") {
          textSize(1.0*uiSize);
          text("Hippo Bank", x+40, y);
        }
        image(hama, x-100, y, 80, 80);
      }
    } else {
      image(empty_UI3, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.1*uiSize);
        text("하마 은행", x+40, y);
      }
      if (language == "english") {
        textSize(1.0*uiSize);
        text("Hippo Bank", x+40, y);
      }
      image(hama, x-100, y, 80, 80);
    }
  }
}

void b_save(float x, float y, int i) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
        mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
        image(icoin, x, y, 11*uiSize, 4.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(0.9*uiSize);
          text("예금하기", x+10, y);
        }
        if (language == "english") {
          textSize(0.8*uiSize);
          text("Deposit", x+10, y);
        }
        image(money, x-100, y, 70, 70);
        if (textOutput > 0) {
          if (myMoney >= textOutput) {
            if (i == 1) depMoney_orange += textOutput;
            if (i == 2) depMoney_pig += textOutput;
            if (i == 3) depMoney_hama += textOutput;
            myMoney -= textOutput;
            casher.play();
            textOutput = 0;
          }
        }
      } else {
        image(icoin, x, y, 12*uiSize, 5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.1*uiSize);
          text("예금하기", x+10, y);
        }
        if (language == "english") {
          textSize(1.0*uiSize);
          text("Deposit", x+10, y);
        }
        image(money, x-110, y, 80, 80);
      }
    } else {
      image(icoin, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.1*uiSize);
        text("예금하기", x+10, y);
      }
      if (language == "english") {
        textSize(1.0*uiSize);
        text("Deposit", x+10, y);
      }
      image(money, x-110, y, 80, 80);
    }
  }
}

void b_get(float x, float y, int i) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
        mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
        image(icoin, x, y, 11*uiSize, 4.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(0.9*uiSize);
          text("출금하기", x+10, y);
        }
        if (language == "english") {
          textSize(0.8*uiSize);
          text("withdraw ", x+10, y);
        }
        image(money, x-100, y, 70, 70);
        if (textOutput > 0) {
          if (i == 1) {
            if (depMoney_orange >= textOutput) {
              casher.play();
              myMoney+=textOutput;
              depMoney_orange -= textOutput;
            }
          }
          if (i == 2) {
            if (depMoney_pig >= textOutput) {
              casher.play();
              myMoney+=textOutput;
              depMoney_pig -= textOutput;
            }
          }
          if (i == 3) {
            if (depMoney_hama >= textOutput) {
              casher.play();
              myMoney+=textOutput;
              depMoney_hama -= textOutput;
            }
          }
        }
      } else {
        image(icoin, x, y, 12*uiSize, 5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.1*uiSize);
          text("출금하기", x+10, y);
        }
        if (language == "english") {
          textSize(1.0*uiSize);
          text("withdraw ", x+10, y);
        }
        image(money, x-110, y, 80, 80);
      }
    } else {
      image(icoin, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.1*uiSize);
        text("출금하기", x+10, y);
      }
      if (language == "english") {
        textSize(1.0*uiSize);
        text("withdraw ", x+10, y);
      }
      image(money, x-110, y, 80, 80);
    }
  }
}
