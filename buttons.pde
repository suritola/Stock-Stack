float startX, startY; //첫번째 시작하기 버튼
float start2X, start2Y; //두번째 시작하기 버튼
float qstart2X, qstart2Y; //Q두번째 시작하기 버튼
float start3X, start3Y; //세번째 시작하기 버튼
float start4X, start4Y; //네번째 시작하기 버튼
float helpX, helpY; //도움말 버튼
float backX, backY; //뒤로가기 버튼
float walletX, walletY; //잔고 버튼
float koreaX, koreaY; //국내증시 버튼

//기초자금 증감 버튼
float attX, attY;
float a5tX, a5tY;
float ahtX, ahtY;
float sttX, sttY;
float s5tX, s5tY;
float shtX, shtY;
//기초자금 증감 버튼

float snX, snY; //뉴스버튼
float trX, trY; //환율버튼

float buyX, buyY;
float sellX, sellY;

float questX, questY;

String pastScreen;

float setX;
float setY;

void b_setting(float x, float y) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+75 && mouseX >= x-75 &&
      mouseY <= y+75 && mouseY >= y-75) {
      image(setting,  x, y, 130, 130);
      clickedWhat = "setting";
      showSetting = true;
    } else image(setting, x, y, 150, 150);
  } else image(setting, x, y, 150, 150);
}


void b_reset(float x, float y) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+4*uiSize && mouseX >= x-4*uiSize &&
      mouseY <= y+1.25*uiSize && mouseY >= y-1.25*uiSize) {
      ButtonClick.play();
      image(empty_UI2, x, y, 7*uiSize, 2.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(0.9*uiSize);
        text("타이틀 화면", x, y);
      }
      if (language == "english") {
        textSize(0.9*uiSize);
        text("Title", x, y);
      }
      AllSave();
      screenMode = "start";
      if (showSetting == true) showSetting = false;
      if (title == true) title = false;
    } else {
      image(empty_UI2, x, y, 8*uiSize, 3*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.1*uiSize);
        text("타이틀 화면", x, y);
      }
      if (language == "english") {
        textSize(1.1*uiSize);
        text("Title", x, y);
      }
    }
  } else {
    image(empty_UI2, x, y, 8*uiSize, 3*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.1*uiSize);
      text("타이틀 화면", x, y);
    }
    if (language == "english") {
      textSize(1.1*uiSize);
      text("Title", x, y);
    }
  }
}

void b_exit(float x, float y) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+4*uiSize && mouseX >= x-4*uiSize &&
      mouseY <= y+1.25*uiSize && mouseY >= y-1.25*uiSize) {
      ButtonClick.play();
      image(exit, x, y, 4*uiSize, 2.0*uiSize);
      AllSave();
      exit();
    } else image(exit, x, y, 5*uiSize, 2.5*uiSize);
  } else image(exit, x, y, 5*uiSize, 2.5*uiSize);
}

void b_priceUp10000(float x, float y, int i) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+2*uiSize && mouseX >= x-2*uiSize &&
      mouseY <= y+0.75*uiSize && mouseY >= y-0.75*uiSize) {
      clickedWhat = "10000up";
      clickedInt = i;
      image(setMoneyUI, x, y, 3.5*uiSize, 1.3*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(0.6*uiSize);
        text("+10,000원", x, y);
      }
      if (language == "english") {
        textSize(0.55*uiSize);
        text("+10,000won", x, y);
      }
    } else {
      image(setMoneyUI, x, y, 4*uiSize, 1.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(0.7*uiSize);
        text("+10,000원", x, y);
      }
      if (language == "english") {
        textSize(0.65*uiSize);
        text("+10,000won", x, y);
      }
    }
  } else {
    image(setMoneyUI, x, y, 4*uiSize, 1.5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(0.7*uiSize);
      text("+10,000원", x, y);
    }
    if (language == "english") {
      textSize(0.65*uiSize);
      text("+10,000won", x, y);
    }
  }
}

void b_priceUp100000(float x, float y, int i) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+2*uiSize && mouseX >= x-2*uiSize &&
      mouseY <= y+0.75*uiSize && mouseY >= y-0.75*uiSize) {
      clickedWhat = "100000up";
      clickedInt = i;
      image(setMoneyUI, x, y, 3.5*uiSize, 1.3*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.5*uiSize);
      if (language == "korean") text("+100,000원", x, y);
      if (language == "english") text("+100,000won", x, y);
    } else {
      image(setMoneyUI, x, y, 4*uiSize, 1.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.6*uiSize);
      if (language == "korean") text("+100,000원", x, y);
      if (language == "english") text("+100,000won", x, y);
    }
  } else {
    image(setMoneyUI, x, y, 4*uiSize, 1.5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(0.6*uiSize);
    if (language == "korean") text("+100,000원", x, y);
    if (language == "english") text("+100,000won", x, y);
  }
}

void b_priceDown10000(float x, float y, int i) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+2*uiSize && mouseX >= x-2*uiSize &&
      mouseY <= y+0.75*uiSize && mouseY >= y-0.75*uiSize) {
      clickedWhat = "10000down";
      clickedInt = i;
      image(setMoneyUI2, x, y, 3.5*uiSize, 1.3*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.6*uiSize);
      if (language == "korean") text("-10,000원", x, y);
      if (language == "english") text("-10,000won", x, y);
    } else {
      image(setMoneyUI2, x, y, 4*uiSize, 1.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.7*uiSize);
      if (language == "korean") text("-10,000원", x, y);
      if (language == "english") text("-10,000won", x, y);
    }
  } else {
    image(setMoneyUI2, x, y, 4*uiSize, 1.5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(0.7*uiSize);
    if (language == "korean") text("-10,000원", x, y);
    if (language == "english") text("-10,000won", x, y);
  }
}

void b_priceDown100000(float x, float y, int i) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+2*uiSize && mouseX >= x-2*uiSize &&
      mouseY <= y+0.75*uiSize && mouseY >= y-0.75*uiSize) {
      clickedWhat = "100000down";
      clickedInt = i;
      image(setMoneyUI2, x, y, 3.5*uiSize, 1.3*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.5*uiSize);
      if (language == "korean") text("-100,000원", x, y);
      if (language == "english") text("-100,000won", x, y);
    } else {
      image(setMoneyUI2, x, y, 4*uiSize, 1.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.6*uiSize);
      if (language == "korean") text("-100,000원", x, y);
      if (language == "english") text("-100,000won", x, y);
    }
  } else {
    image(setMoneyUI2, x, y, 4*uiSize, 1.5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(0.6*uiSize);
    if (language == "korean") text("-100,000원", x, y);
    if (language == "english") text("-100,000won", x, y);
  }
}

void b_changeUp1(float x, float y, int i) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+1*uiSize && mouseX >= x-1*uiSize &&
      mouseY <= y+0.75*uiSize && mouseY >= y-0.75*uiSize) {
      coin.rate(2);
      coin.play();
      fill(#262552);
      if (traffic[i]+1 <= 90) traffic[i]+=1;
      else {
        traffic[i] = 90;
        if (language == "korean") showError("최대 변동률은 90%입니다.", 2);
        if (language == "english") showError("Maximum fluctuating is 90%.", 2);
      }
    } else fill (#6E6AFF);
  } else fill (#6E6AFF);
  rect(x, y, 2*uiSize, 1.5*uiSize, 50);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(0.8*uiSize);
  text("+1%", x, y);
}

void b_changeDown1(float x, float y, int i) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+1*uiSize && mouseX >= x-1*uiSize &&
      mouseY <= y+0.75*uiSize && mouseY >= y-0.75*uiSize) {
      coin.rate(1);
      coin.play();
      fill(#462028);
      if (traffic[i]-1 >= 5) traffic[i]-=1;
      else {
        traffic[i] = 5;
        if (language == "korean") showError("최소 변동률은 5%입니다.", 2);
        if (language == "english") showError("Minimum fluctuating is 5%.", 2);
      }
    } else fill (#FF7192);
  } else fill (#FF7192);
  rect(x, y, 2*uiSize, 1.5*uiSize, 50);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(0.8*uiSize);
  text("-1%", x, y);
}

void b_changeUp10(float x, float y, int i) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+1*uiSize && mouseX >= x-1*uiSize &&
      mouseY <= y+0.75*uiSize && mouseY >= y-0.75*uiSize) {
      coin.rate(2);
      coin.play();
      fill(#262552);
      if (traffic[i]+10 <= 90) traffic[i]+=10;
      else {
        traffic[i] = 90;
        if (language == "korean") showError("최대 변동률은 90%입니다.", 2);
        if (language == "english") showError("Maximum fluctuating is 90%.", 2);
      }
    } else fill (#6E6AFF);
  } else fill (#6E6AFF);
  rect(x, y, 2*uiSize, 1.5*uiSize, 50);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(0.7*uiSize);
  text("+10%", x, y);
}

void b_changeDown10(float x, float y, int i) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+1*uiSize && mouseX >= x-1*uiSize &&
      mouseY <= y+0.75*uiSize && mouseY >= y-0.75*uiSize) {
      coin.rate(1);
      coin.play();
      fill(#462028);
      if (traffic[i]-10 >= 5) traffic[i]-=10;
      else {
        traffic[i] = 5;
        if (language == "korean") showError("최소 변동률은 5%입니다.", 2);
        if (language == "english") showError("Minimum fluctuating is 5%.", 2);
      }
    } else fill (#FF7192);
  } else fill (#FF7192);
  rect(x, y, 2*uiSize, 1.5*uiSize, 50);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(0.7*uiSize);
  text("-10%", x, y);
}

void b_hidden_quest(float x, float y) {
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+4*uiSize && mouseX >= x-4*uiSize &&
      mouseY <= y+1.25*uiSize && mouseY >= y-1.25*uiSize) {
      ButtonClick.play();
      image(hidden_click, x, y, 10*uiSize, 5.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.0*uiSize);
        text("히든퀘스트", x, y-10);
      }
      if (language == "english") {
        textSize(0.8*uiSize);
        text("HiddenQuest", x, y-10);
      }
      if (screenMode == "quest1") {
        pastScreen = "quest1";
        screenMode = "hiddenQuest";
      }
      if (screenMode == "quest2") {
        pastScreen = "quest2";
        screenMode = "hiddenQuest";
      }
    } else {
      image(hidden_noclick, x, y, 11*uiSize, 6.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.0*uiSize);
        text("히든퀘스트", x, y-10);
      }
      if (language == "english") {
        textSize(0.8*uiSize);
        text("HiddenQuest", x, y-10);
      }
    }
  } else {
    image(hidden_noclick, x, y, 11*uiSize, 6.5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.0*uiSize);
      text("히든퀘스트", x, y-10);
    }
    if (language == "english") {
      textSize(0.8*uiSize);
      text("HiddenQuest", x, y-10);
    }
  }
}

void haveStock(float x, float y, int i) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+7.5*uiSize && mouseX >= x-7.5*uiSize &&
        mouseY <= y+3.5*uiSize && mouseY >= y-3.5*uiSize) {
        image(icoin, x, y, 15.5*uiSize, 8*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          if (i != 7) {
            textSize(1.3*uiSize);
            text(name[i], x-3.5*uiSize, y-2*uiSize);
          } else if (i == 7) {
            textSize(0.8*uiSize);
            text(name[i], x-3.5*uiSize, y-2*uiSize);
          }
          fill(0);
          textSize(1.3*uiSize);
          text(have[i] + "주", x+4*uiSize, y-2*uiSize);
          text("평균단가", x-4*uiSize, y);
          if (have[i] > 0) {
            String ave1 = String.format("%,d", int(ave[i]));
            text(ave1+"원", x+4*uiSize, y);
          } else {
            text("0원", x+4*uiSize, y);
          }
          if (have[i] > 0) {
            float Getper=0;
            if (price[i] < ave[i]) {
              Getper = (ave[i] / price[i]*100)-100;
              Getper = round(Getper*100)/100.0;
              fill(0, 0, 255);
              text("수익률 : " + "-" + Getper + "%", x, y+2.5*uiSize);
            }
            if (price[i] > ave[i]) {
              Getper = (price[i] / ave[i]*100)-100;
              Getper = round(Getper*100)/100.0;
              fill(255, 0, 0);
              text("수익률 : " + "+" + Getper + "%", x, y+2.5*uiSize);
            }
          } else {
            fill(0);
            text("수익률 : " + "0%", x, y+2.5*uiSize);
          }
        }
        if (language == "english") {
          if (i != 7) {
            textSize(1.3*uiSize);
            text(Ename[i], x-3.5*uiSize, y-2*uiSize);
          } else if (i == 7) {
            textSize(0.8*uiSize);
            text(Ename[i], x-3.5*uiSize, y-2*uiSize);
          }
          fill(0);
          textSize(1.3*uiSize);
          text(have[i] + "s", x+4*uiSize, y-2*uiSize);
          textSize(0.8*uiSize);
          text("Average Price", x-4*uiSize, y);
          if (have[i] > 0) {
            String ave1 = String.format("%,d", int(ave[i]));
            text(ave1+"won", x+4*uiSize, y);
          } else {
            text("0won", x+4*uiSize, y);
          }
          if (have[i] > 0) {
            float Getper=0;
            if (price[i] < ave[i]) {
              Getper = (ave[i] / price[i]*100)-100;
              Getper = round(Getper*100)/100.0;
              fill(0, 0, 255);
              text("Earn : " + "-" + Getper + "%", x, y+2.5*uiSize);
            }
            if (price[i] > ave[i]) {
              Getper = (price[i] / ave[i]*100)-100;
              Getper = round(Getper*100)/100.0;
              fill(255, 0, 0);
              text("Earn : " + "+" + Getper + "%", x, y+2.5*uiSize);
            }
          } else {
            fill(0);
            text("Earn : " + "0%", x, y+2.5*uiSize);
          }
        }
        if (screenMode == "wallet") {
          page.play();
          if (i == ran[0]) screenMode = "whoga 0";
          if (i == ran[1]) screenMode = "whoga 1";
          if (i == ran[2]) screenMode = "whoga 2";
          if (i == ran[3]) screenMode = "whoga 3";
          if (i == ran[4]) screenMode = "whoga 4";
          if (i == ran[5]) screenMode = "whoga 5";
        }
      } else {
        image(icoin, x, y, 16.5*uiSize, 9*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          if (i != 7) {
            textSize(1.5*uiSize);
            text(name[i], x-3.5*uiSize, y-2*uiSize);
          } else if (i == 7) {
            textSize(1.0*uiSize);
            text(name[i], x-3.5*uiSize, y-2*uiSize);
          }
          fill(0);
          textSize(1.5*uiSize);
          text(have[i] + "주", x+4*uiSize, y-2*uiSize);
          text("평균단가", x-4*uiSize, y);
          if (have[i] > 0) {
            String ave1 = String.format("%,d", int(ave[i]));
            text(ave1+"원", x+4*uiSize, y);
          } else {
            text("0원", x+4*uiSize, y);
          }
          if (have[i] > 0) {
            float Getper=0;
            if (price[i] < ave[i]) {
              Getper = (ave[i] / price[i]*100)-100;
              Getper = round(Getper*100)/100.0;
              fill(0, 0, 255);
              text("수익률 : " + "-" + Getper + "%", x, y+2.5*uiSize);
            }
            if (price[i] > ave[i]) {
              Getper = (price[i] / ave[i]*100)-100;
              Getper = round(Getper*100)/100.0;
              fill(255, 0, 0);
              text("수익률 : " + "+" + Getper + "%", x, y+2.5*uiSize);
            }
          } else {
            fill(0);
            text("수익률 : " + "0%", x, y+2.5*uiSize);
          }
        }
        if (language == "english") {
          if (i != 7) {
            textSize(1.5*uiSize);
            text(Ename[i], x-3.5*uiSize, y-2*uiSize);
          } else if (i == 7) {
            textSize(1.0*uiSize);
            text(Ename[i], x-3.5*uiSize, y-2*uiSize);
          }
          fill(0);
          textSize(1.5*uiSize);
          text(have[i] + "s", x+4*uiSize, y-2*uiSize);
          textSize(1.0*uiSize);
          text("Average Price", x-4*uiSize, y);
          if (have[i] > 0) {
            String ave1 = String.format("%,d", int(ave[i]));
            text(ave1+"won", x+4*uiSize, y);
          } else {
            text("0won", x+4*uiSize, y);
          }
          if (have[i] > 0) {
            float Getper=0;
            if (price[i] < ave[i]) {
              Getper = (ave[i] / price[i]*100)-100;
              Getper = round(Getper*100)/100.0;
              fill(0, 0, 255);
              text("Earn : " + "-" + Getper + "%", x, y+2.5*uiSize);
            }
            if (price[i] > ave[i]) {
              Getper = (price[i] / ave[i]*100)-100;
              Getper = round(Getper*100)/100.0;
              fill(255, 0, 0);
              text("Earn : " + "+" + Getper + "%", x, y+2.5*uiSize);
            }
          } else {
            fill(0);
            text("Earn : " + "0%", x, y+2.5*uiSize);
          }
        }
      }
    } else {
      image(icoin, x, y, 16.5*uiSize, 9*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        if (i != 7) {
          textSize(1.5*uiSize);
          text(name[i], x-3.5*uiSize, y-2*uiSize);
        } else if (i == 7) {
          textSize(1.0*uiSize);
          text(name[i], x-3.5*uiSize, y-2*uiSize);
        }
        fill(0);
        textSize(1.5*uiSize);
        text(have[i] + "주", x+4*uiSize, y-2*uiSize);
        text("평균단가", x-4*uiSize, y);
        if (have[i] > 0) {
          String ave1 = String.format("%,d", int(ave[i]));
          text(ave1+"원", x+4*uiSize, y);
        } else {
          text("0원", x+4*uiSize, y);
        }
        if (have[i] > 0) {
          float Getper=0;
          if (price[i] < ave[i]) {
            Getper = (ave[i] / price[i]*100)-100;
            Getper = round(Getper*100)/100.0;
            fill(0, 0, 255);
            text("수익률 : " + "-" + Getper + "%", x, y+2.5*uiSize);
          }
          if (price[i] > ave[i]) {
            Getper = (price[i] / ave[i]*100)-100;
            Getper = round(Getper*100)/100.0;
            fill(255, 0, 0);
            text("수익률 : " + "+" + Getper + "%", x, y+2.5*uiSize);
          }
        } else {
          fill(0);
          text("수익률 : " + "0%", x, y+2.5*uiSize);
        }
      }
      if (language == "english") {
        if (i != 7) {
          textSize(1.5*uiSize);
          text(Ename[i], x-3.5*uiSize, y-2*uiSize);
        } else if (i == 7) {
          textSize(1.0*uiSize);
          text(Ename[i], x-3.5*uiSize, y-2*uiSize);
        }
        fill(0);
        textSize(1.5*uiSize);
        text(have[i] + "s", x+4*uiSize, y-2*uiSize);
        textSize(1.0*uiSize);
        text("Average Price", x-4*uiSize, y);
        if (have[i] > 0) {
          String ave1 = String.format("%,d", int(ave[i]));
          text(ave1+"won", x+4*uiSize, y);
        } else {
          text("0won", x+4*uiSize, y);
        }
        if (have[i] > 0) {
          float Getper=0;
          if (price[i] < ave[i]) {
            Getper = (ave[i] / price[i]*100)-100;
            Getper = round(Getper*100)/100.0;
            fill(0, 0, 255);
            text("Earn : " + "-" + Getper + "%", x, y+2.5*uiSize);
          }
          if (price[i] > ave[i]) {
            Getper = (price[i] / ave[i]*100)-100;
            Getper = round(Getper*100)/100.0;
            fill(255, 0, 0);
            text("Earn : " + "+" + Getper + "%", x, y+2.5*uiSize);
          }
        } else {
          fill(0);
          text("Earn : " + "0%", x, y+2.5*uiSize);
        }
      }
    }
  }
}
int spint = 0;

void speed(float x, float y) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+4*uiSize && mouseX >= x-4*uiSize &&
        mouseY <= y+1.25*uiSize && mouseY >= y-1.25*uiSize) {
        clickedWhat = "speed";
        image(empty_UI3, x, y, 7*uiSize, 2.0*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.1*uiSize);
          float sp = round(speed*10)/10.0;
          text("배속 x"+sp, x, y);
        }
        if (language == "english") {
          textSize(0.8*uiSize);
          float sp = round(speed*10)/10.0;
          text("Speed x"+sp, x, y);
        }
      } else {
        image(empty_UI3, x, y, 8*uiSize, 2.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.3*uiSize);
          float sp = round(speed*10)/10.0;
          text("배속 x"+sp, x, y);
        }
        if (language == "english") {
          textSize(1.1*uiSize);
          float sp = round(speed*10)/10.0;
          text("Speed x"+sp, x, y);
        }
      }
    } else {
      image(empty_UI3, x, y, 8*uiSize, 2.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.3*uiSize);
        float sp = round(speed*10)/10.0;
        text("배속 x"+sp, x, y);
      }
      if (language == "english") {
        textSize(1.1*uiSize);
        float sp = round(speed*10)/10.0;
        text("Speed x"+sp, x, y);
      }
    }
  }
}

void esc_quest(float x, float y) {
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+75 && mouseX >= x-75 &&
      mouseY <= y+75 && mouseY >= y-75) {
      if (title == true) {
        image(escQuest, x, y, 130, 130);
        title = false;
        screenMode = "quest1";
      }
    } else image(escQuest, x, y, 150, 150);
  } else image(escQuest, x, y, 150, 150);
}

void vol_music(float x, float y) {
  strokeWeight(3);
  stroke(0);
  rectMode(CENTER);
  noFill();
  strokeWeight(5);
  stroke(0);
  rect(x, y, 80, 80);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+50 && mouseX >= x-50 &&
      mouseY <= y+50 && mouseY >= y-50) {
      if (music == true) {
        image(vol_music_on, x, y, 100, 100);
        music = false;
      } else if (music == false) {
        image(vol_music_off, x, y, 100, 100);
        music = true;
      }
    } else {
      if (music == true) image(vol_music_on, x, y, 100, 100);
      else image(vol_music_off, x, y, 90, 90);
    }
  } else {
    if (music == true) image(vol_music_on, x, y, 100, 100);
    else image(vol_music_off, x, y, 90, 90);
  }
}

void quest(float x, float y) {
  questX = x;
  questY = y;
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
        text("업적", x+40, y);
      }
      if (language == "english") {
        textSize(2.2*uiSize);
        text("Quest", x+40, y);
      }
      image(trophy, x-100, y, 70, 70);
    } else {
      image(empty_UI, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.5*uiSize);
        text("업적", x+40, y);
      }
      if (language == "english") {
        textSize(2.4*uiSize);
        text("Quest", x+40, y);
      }
      image(trophy, x-100, y, 80, 80);
    }
  } else {
    image(empty_UI, x, y, 12*uiSize, 5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(2.5*uiSize);
      text("업적", x+40, y);
    }
    if (language == "english") {
      textSize(2.4*uiSize);
      text("Quest", x+40, y);
    }
    image(trophy, x-100, y, 80, 80);
  }
}

float ns=-1;

void recent_news(float x, float y) {
  if (ns == -1) {
    ns = millis();
    for (int num=0; num<20; num++) {
      int num2 = int(random(0, 5));
      if (language == "korean") WhatNews[num] = name[ran[num2]];
      if (language == "english") WhatNews[num] = Ename[ran[num2]];
      setNews();
    }
    for (int i=0; i<5; i++) {
      int num = int(random(0, 10));
      if (language == "korean") recent_news[i] = news[num];
      if (language == "english") recent_news[i] = Enews[num];
    }
  } else if (millis() > ns+5000) {
    ns = millis();
    for (int num=0; num<20; num++) {
      int num2 = int(random(0, 5));
      if (language == "korean") WhatNews[num] = name[ran[num2]];
      if (language == "english") WhatNews[num] = Ename[ran[num2]];
      setNews();
    }
    for (int i=0; i<5; i++) {
      int num = int(random(0, 10));
      if (language == "korean") recent_news[i] = news[num];
      if (language == "english") recent_news[i] = Enews[num];
    }
  }
  rectMode(CENTER);
  fill(#528AFF);
  image(snews, x, y, 500, 100);
  textAlign(CENTER, CENTER);
  textFont(uiFont);
  fill(255);
  if (language == "korean") {
    textSize(2.0*uiSize);
    text("주요 뉴스", x, y-5);
  }
  if (language == "english") {
    textSize(2.2*uiSize);
    text("News", x, y-5);
  }
  show_news(x+170, y);
  if (showNews == true) {
    for (int i=0; i<5; i++) {
      if (showRecentNews[i] == true) {
        rectMode(CENTER);
        fill(#F9FFD6);
        strokeWeight(1);
        rect(x, 2*y+100*i, 600, 100, 10);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(0.8*uiSize);
          text(recent_news[i], x, 2*y+100*i);
        }
        if (language == "english") {
          if (recent_news[i] != Enews[9] || recent_news[i] != Enews[7]) textSize(0.8*uiSize);
          if (recent_news[i] == Enews[9] || recent_news[i] == Enews[7]) textSize(0.65*uiSize);
          text(recent_news[i], x, 2*y+100*i);
        }
      }
    }
  }
}

void b_start3(float x, float y) {
  start3X = x;
  start3Y = y;
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+7.5*uiSize && mouseX >= x-7.5*uiSize &&
      mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
      image(empty_UI, x, y, 11*uiSize, 2.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.6*uiSize);
        text("시작하기", x, y);
      }
      if (language == "english") {
        textSize(1.6*uiSize);
        text("Start", x, y);
      }
      for (int i=0; i<20; i++) {
        save_price[i] = price[i];
        total[i] = price[i]*470;
      }
    } else {
      image(empty_UI, x, y, 12*uiSize, 3*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.8*uiSize);
        text("시작하기", x, y);
      }
      if (language == "english") {
        textSize(1.8*uiSize);
        text("Start", x, y);
      }
    }
  } else {
    image(empty_UI, x, y, 12*uiSize, 3*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.8*uiSize);
      text("시작하기", x, y);
    }
    if (language == "english") {
      textSize(1.8*uiSize);
      text("Start", x, y);
    }
  }
}

void b_qstart2(float x, float y) {
  start2X = x;
  start2Y = y;
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+4*uiSize && mouseX >= x-4*uiSize &&
      mouseY <= y+2.25*uiSize && mouseY >= y-2.25*uiSize) {
      image(empty_UI4, x, y, 7*uiSize, 4.2*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.4*uiSize);
        text("다음으로", x, y-26);
      }
      if (language == "english") {
        textSize(1.5*uiSize);
        text("Next", x, y-26);
      }
    } else {
      image(empty_UI4, x, y, 8*uiSize, 4.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.6*uiSize);
        text("다음으로", x, y-26);
      }
      if (language == "english") {
        textSize(1.7*uiSize);
        text("Next", x, y-26);
      }
    }
  } else {
    image(empty_UI4, x, y, 8*uiSize, 4.5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.6*uiSize);
      text("다음으로", x, y-26);
    }
    if (language == "english") {
      textSize(1.7*uiSize);
      text("Next", x, y-26);
    }
  }
}

void b_start2(float x, float y) {
  start2X = x;
  start2Y = y;
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+7.5*uiSize && mouseX >= x-7.5*uiSize &&
      mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
      image(empty_UI4, x, y, 15*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.2*uiSize);
        text("다음으로", x, y-26);
      }
      if (language == "english") {
        textSize(2.3*uiSize);
        text("Next", x, y-26);
      }
    } else {
      image(empty_UI4, x, y, 16*uiSize, 5.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.4*uiSize);
        text("다음으로", x, y-26);
      }
      if (language == "english") {
        textSize(2.5*uiSize);
        text("Next", x, y-26);
      }
    }
  } else {
    image(empty_UI4, x, y, 16*uiSize, 5.5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(2.4*uiSize);
      text("다음으로", x, y-26);
    }
    if (language == "english") {
      textSize(2.5*uiSize);
      text("Next", x, y-26);
    }
  }
}

void b_start(float x, float y) {
  startX = x;
  startY = y;
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+7.5*uiSize && mouseX >= x-7.5*uiSize &&
      mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
      image(empty_UI, x, y, 14*uiSize, 4.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.3*uiSize);
        text("새 게임", x, y);
      }
      if (language == "english") {
        textSize(2.4*uiSize);
        text("New Game", x, y);
      }
    } else {
      image(empty_UI, x, y, 15*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.5*uiSize);
        text("새 게임", x, y);
      }
      if (language == "english") {
        textSize(2.6*uiSize);
        text("New Game", x, y);
      }
    }
  } else {
    image(empty_UI, x, y, 15*uiSize, 5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(2.5*uiSize);
      text("새 게임", x, y);
    }
    if (language == "english") {
      textSize(2.6*uiSize);
      text("New Game", x, y);
    }
  }
}

float earX; float earY;
void b_ear(float x, float y) {
  earX = x;
  earY = y;
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+7.5*uiSize && mouseX >= x-7.5*uiSize &&
      mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
      image(empty_UI3, x, y, 14*uiSize, 4.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.3*uiSize);
        text("이어하기", x, y);
      }
      if (language == "english") {
        textSize(2.4*uiSize);
        text("Continue", x, y);
      }
    } else {
      image(empty_UI3, x, y, 15*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.5*uiSize);
        text("이어하기", x, y);
      }
      if (language == "english") {
        textSize(2.6*uiSize);
        text("Continue", x, y);
      }
    }
  } else {
    image(empty_UI3, x, y, 15*uiSize, 5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(2.5*uiSize);
      text("이어하기", x, y);
    }
    if (language == "english") {
      textSize(2.6*uiSize);
      text("Continue", x, y);
    }
  }
}

void b_detail(float x, float y, int i) {
  if (showSetting == false) {
    buy = i;
    strokeWeight(3);
    stroke(0);
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+3.5*uiSize && mouseX >= x-3.5*uiSize &&
        mouseY <= y+1.75*uiSize && mouseY >= y-1.75*uiSize) {
        image(detail, x, y, 4*uiSize, 1.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(0.8*uiSize);
          text("상세정보", x, y-8);
        }
        if (language == "english") {
          textSize(1.1*uiSize);
          text("Goto", x, y-8);
        }
        ButtonClick.play();
        if (screenMode == "koreaMarket") {
          wantPrice = 0;
          wantAmount = 0;
          if (buy == 0) screenMode = "hoga 0";
          if (buy == 1) screenMode = "hoga 1";
          if (buy == 2) screenMode = "hoga 2";
          if (buy == 3) screenMode = "hoga 3";
          if (buy == 4) screenMode = "hoga 4";
          if (buy == 5) screenMode = "hoga 5";
        }
      } else {
        image(detail, x, y, 5*uiSize, 2.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.0*uiSize);
          text("상세정보", x, y-8);
        }
        if (language == "english") {
          textSize(1.3*uiSize);
          text("Goto", x, y-8);
        }
      }
    } else {
      image(detail, x, y, 5*uiSize, 2.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.0*uiSize);
        text("상세정보", x, y-8);
      }
      if (language == "english") {
        textSize(1.3*uiSize);
        text("Goto", x, y-8);
      }
    }
  }
}

void b_buy_max(float x, float y, int i) {
  if (showSetting == false) {
    strokeWeight(3);
    stroke(0);
    if (mousePressed) {
      if (mouseX <= x+1.5*uiSize && mouseX >= x-1.5*uiSize &&
        mouseY <= y+0.5*uiSize && mouseY >= y-0.5*uiSize) {
        fill(#5F4529);
        clickedWhat = "buyMax";
        clickedInt = i;
      } else fill (#FCB86E);
    } else fill (#FCB86E);
    rect(x, y, 3*uiSize, 1*uiSize, 50);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(0.7*uiSize);
    if (language == "korean") text("최대", x, y);
    if (language == "english") text("max", x, y);
  }
}

void b_sell_max(float x, float y, int i) {
  if (showSetting == false) {
    strokeWeight(3);
    stroke(0);
    if (mousePressed) {
      if (mouseX <= x+1.5*uiSize && mouseX >= x-1.5*uiSize &&
        mouseY <= y+0.5*uiSize && mouseY >= y-0.5*uiSize) {
        fill(#377442);
        clickedWhat = "sellMax";
        clickedInt = i;
      } else fill (#79FF90);
    } else fill (#79FF90);
    rect(x, y, 3*uiSize, 1*uiSize, 50);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(0.7*uiSize);
    if (language == "korean") text("최대", x, y);
    if (language == "english") text("max", x, y);
  }
}

int buy;
void b_buy(float x, float y, int i) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+3.5*uiSize && mouseX >= x-3.5*uiSize &&
        mouseY <= y+1.75*uiSize && mouseY >= y-1.75*uiSize) {
        clickedWhat = "buy";
        clickedInt = i;
        image(empty_UI6, x, y, 6*uiSize, 2.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.1*uiSize);
          text("매수하기", x, y-10);
        }
        if (language == "english") {
          textSize(1.1*uiSize);
          text("buy", x, y-10);
        }
      } else {
        image(empty_UI6, x, y, 7*uiSize, 3.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.3*uiSize);
          text("매수하기", x, y-10);
        }
        if (language == "english") {
          textSize(1.3*uiSize);
          text("buy", x, y-10);
        }
      }
    } else {
      image(empty_UI6, x, y, 7*uiSize, 3.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.3*uiSize);
        text("매수하기", x, y-10);
      }
      if (language == "english") {
        textSize(1.3*uiSize);
        text("buy", x, y-10);
      }
    }
  }
}

void myMoney(float x, float y) {
  imageMode(CENTER);
  image(bill, x, y, 15*uiSize, 3.5*uiSize);
  if (language == "korean") {
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(1.2*uiSize);
    String text = String.format("%,d", int(myMoney));
    text("현재 예수금" + ": " + text + "원", x, y);
  }
  if (language == "english") {
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(1.2*uiSize);
    String text = String.format("%,d", int(myMoney));
    text("myMoney" + ": " + text + "won", x, y);
  }
}

int sell;

void b_sell(float x, float y, int i) {
  if (showSetting == false) {
    sell = i;
    strokeWeight(3);
    stroke(0);
    if (mousePressed) {
      if (mouseX <= x+3.5*uiSize && mouseX >= x-3.5*uiSize &&
        mouseY <= y+1.75*uiSize && mouseY >= y-1.75*uiSize) {
        clickedWhat = "sell";
        clickedInt = i;
        image(empty_UI5, x, y, 6*uiSize, 2.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.1*uiSize);
          text("매도하기", x, y-10);
          textSize(0.7*uiSize);
          text("보유 수량 : " + have[i] + "주", x, y+70);
        }
        if (language == "english") {
          textSize(1.4*uiSize);
          text("Sell", x, y-10);
          textSize(0.6*uiSize);
          text("You have : " + have[i] + "s", x, y+70);
        }
      } else {
        image(empty_UI5, x, y, 7*uiSize, 3.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(1.3*uiSize);
          text("매도하기", x, y-10);
          textSize(0.7*uiSize);
          text("보유 수량 : " + have[i] + "주", x, y+70);
        }
        if (language == "english") {
          textSize(1.4*uiSize);
          text("Sell", x, y-10);
          textSize(0.6*uiSize);
          text("You have : " + have[i] + "s", x, y+70);
        }
      }
    } else {
      image(empty_UI5, x, y, 7*uiSize, 3.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.3*uiSize);
        text("매도하기", x, y-10);
        textSize(0.7*uiSize);
        text("보유 수량 : " + have[i] + "주", x, y+70);
      }
      if (language == "english") {
        textSize(1.4*uiSize);
        text("Sell", x, y-10);
        textSize(0.6*uiSize);
        text("You have : " + have[i] + "s", x, y+70);
      }
    }
  }
}

void myStock(float x, float y) {
  image(bill, x, y, 18*uiSize, 4*uiSize);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(1.5*uiSize);
    float totalStock=0;
    for (int i=0; i<20; i++) if (have[i] > 0) totalStock+= price[i]*have[i];
    String p = String.format("%,d", int(totalStock+depMoney_orange+depMoney_pig+depMoney_hama));
    text("보유자금 : " + p + "원", x, y);
    textSize(1.2*uiSize);
    float earn;
    if (totalE > 0) {
      earn = (((totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama)  / startMoney) * 100)-100;
      earn = round(earn*100)/100.0;
      fill(255, 0, 0);
      text("수익률 : " + "+" + totalE + "%", x, y+100);
    }
    if (totalE < 0) {
      earn = ((startMoney / (totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama) ) * 100)-100;
      earn = round(earn*100)/100.0;
      fill(0, 0, 255);
      text("수익률 : " + "" + totalE + "%", x, y+100);
    }
    if (totalE == 0) {
      earn = 100-((totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama)  / startMoney) * 100;
      earn = round(earn*100)/100.0;
      fill(0);
      text("수익률 : " +totalE + "%", x, y+100);
    }
  }
  if (language == "english") {
    textSize(1.3*uiSize);
    float totalStock=0;
    for (int i=0; i<20; i++) if (have[i] > 0) totalStock+= price[i]*have[i];
    String p = String.format("%,d", int(totalStock+depMoney_orange+depMoney_pig+depMoney_hama));
    text("You have : " + p + "won", x, y);
    textSize(1.2*uiSize);
    float earn;
    if (totalE > 0) {
      earn = (((totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama)  / startMoney) * 100)-100;
      earn = round(earn*100)/100.0;
      fill(255, 0, 0);
      text("Earn : " + "+" + totalE + "%", x, y+100);
    }
    if (totalE < 0) {
      earn = ((startMoney / (totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama) ) * 100)-100;
      earn = round(earn*100)/100.0;
      fill(0, 0, 255);
      text("Earn : " + "" + totalE + "%", x, y+100);
    }
    if (totalE == 0) {
      earn = 100-((totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama)  / startMoney) * 100;
      earn = round(earn*100)/100.0;
      fill(0);
      text("Earn : " +totalE + "%", x, y+100);
    }
  }
}

int wp;

void wantPrice(float x, float y, int i) {
  wp = i;
  imageMode(CENTER);
  image(settingScreen, x, y, 18*uiSize, 4*uiSize);
  if (language == "korean") {
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(1.5*uiSize);
    String text = String.format("%,d", int(wantPrice));
    text("희망가" + ": " + text + "원", x, y);
  }
  if (language == "english") {
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(1.2*uiSize);
    String text = String.format("%,d", int(wantPrice));
    text("Hope Price" + ": " + text + "won", x, y);
  }
}


void b_add1(float x, float y) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+2*uiSize && mouseX >= x-2*uiSize &&
        mouseY <= y+1*uiSize && mouseY >= y-1*uiSize) {
        image(setMoneyUI, x, y, 3*uiSize, 1.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        textSize(0.6*uiSize);
        if (language == "korean") text("+1주", x, y);
        if (language == "english") text("+1s", x, y);
        clickedWhat = "add1";
      } else {
        image(setMoneyUI, x, y, 4*uiSize, 2*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        textSize(0.8*uiSize);
        if (language == "korean") text("+1주", x, y);
        if (language == "english") text("+1s", x, y);
      }
    } else {
      image(setMoneyUI, x, y, 4*uiSize, 2*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.8*uiSize);
      if (language == "korean") text("+1주", x, y);
      if (language == "english") text("+1s", x, y);
    }
  }
}
void b_add10(float x, float y) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+2*uiSize && mouseX >= x-2*uiSize &&
        mouseY <= y+1*uiSize && mouseY >= y-1*uiSize) {
        image(setMoneyUI, x, y, 3*uiSize, 1.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        textSize(0.6*uiSize);
        if (language == "korean") text("+10주", x, y);
        if (language == "english") text("+10s", x, y);
        clickedWhat = "add10";
      } else {
        image(setMoneyUI, x, y, 4*uiSize, 2*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        textSize(0.8*uiSize);
        if (language == "korean") text("+10주", x, y);
        if (language == "english") text("+10s", x, y);
      }
    } else {
      image(setMoneyUI, x, y, 4*uiSize, 2*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.8*uiSize);
      if (language == "korean") text("+10주", x, y);
      if (language == "english") text("+10s", x, y);
    }
  }
}

void b_sub1(float x, float y) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+2*uiSize && mouseX >= x-2*uiSize &&
        mouseY <= y+1*uiSize && mouseY >= y-1*uiSize) {
        image(setMoneyUI2, x, y, 3*uiSize, 1.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        textSize(0.6*uiSize);
        if (language == "korean") text("-1주", x, y);
        if (language == "english") text("-1s", x, y);
        clickedWhat = "sub1";
      } else {
        image(setMoneyUI2, x, y, 4*uiSize, 2*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        textSize(0.8*uiSize);
        if (language == "korean") text("-1주", x, y);
        if (language == "english") text("-1s", x, y);
      }
    } else {
      image(setMoneyUI2, x, y, 4*uiSize, 2*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.8*uiSize);
      if (language == "korean") text("-1주", x, y);
      if (language == "english") text("-1s", x, y);
    }
  }
}

void b_sub10(float x, float y) {
  if (showSetting == false) {
    imageMode(CENTER);
    if (mousePressed) {
      if (mouseX <= x+2*uiSize && mouseX >= x-2*uiSize &&
        mouseY <= y+1*uiSize && mouseY >= y-1*uiSize) {
        image(setMoneyUI2, x, y, 3*uiSize, 1.5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        textSize(0.6*uiSize);
        if (language == "korean") text("-10주", x, y);
        if (language == "english") text("-10s", x, y);
        clickedWhat = "sub10";
      } else {
        image(setMoneyUI2, x, y, 4*uiSize, 2*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        textSize(0.8*uiSize);
        if (language == "korean") text("-10주", x, y);
        if (language == "english") text("-10s", x, y);
      }
    } else {
      image(setMoneyUI2, x, y, 4*uiSize, 2*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(0.8*uiSize);
      if (language == "korean") text("-10주", x, y);
      if (language == "english") text("-10s", x, y);
    }
  }
}


void b_help(float x, float y) {
  helpX = x;
  helpY = y;
  rectMode(CENTER);
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+3*uiSize && mouseX >= x-3*uiSize &&
      mouseY <= y+1.25*uiSize && mouseY >= y-1.25*uiSize) {
      ButtonClick.play();
      image(empty_UI2, x, y, 5*uiSize, 1.8*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(0.8*uiSize);
        text("도움말", x, y);
      }
      if (language == "english") {
        textSize(0.8*uiSize);
        text("help", x, y);
      }
    } else {
      image(empty_UI2, x, y, 6*uiSize, 2.0*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.2*uiSize);
        text("도움말", x, y);
      }
      if (language == "english") {
        textSize(1.2*uiSize);
        text("help", x, y);
      }
    }
  } else {
    image(empty_UI2, x, y, 6*uiSize, 2.0*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.2*uiSize);
      text("도움말", x, y);
    }
    if (language == "english") {
      textSize(1.2*uiSize);
      text("help", x, y);
    }
  }
}

void b_back(float x, float y) {
  backX = x;
  backY = y;
  rectMode(CENTER);
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+3*uiSize && mouseX >= x-3*uiSize &&
      mouseY <= y+1.25*uiSize && mouseY >= y-1.25*uiSize) {
      image(empty_UI2, x, y, 5*uiSize, 2.3*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.0*uiSize);
        text("뒤로가기", x, y);
      }
      if (language == "english") {
        textSize(0.8*uiSize);
        text("back", x, y);
      }
    } else {
      image(empty_UI2, x, y, 6*uiSize, 2.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.0*uiSize);
        text("뒤로가기", x, y);
      }
      if (language == "english") {
        textSize(1.2*uiSize);
        text("back", x, y);
      }
    }
  } else {
    image(empty_UI2, x, y, 6*uiSize, 2.5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.0*uiSize);
      text("뒤로가기", x, y);
    }
    if (language == "english") {
      textSize(1.2*uiSize);
      text("back", x, y);
    }
  }
}

int walletint = 0;

void b_wallet(float x, float y) {
  walletX = x;
  walletY = y;
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
      mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
      image(empty_UI, x, y, 11*uiSize, 4.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.5*uiSize);
        text("잔고", x+40, y);
      }
      if (language == "english") {
        textSize(2.2*uiSize);
        text("Wallet", x+40, y);
      }
      image(money, x-100, y, 70, 70);
      walletint++;
    } else {
      image(empty_UI, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.7*uiSize);
        text("잔고", x+40, y);
      }
      if (language == "english") {
        textSize(2.4*uiSize);
        text("Wallet", x+40, y);
      }
      image(money, x-100, y, 80, 80);
    }
  } else {
    image(empty_UI, x, y, 12*uiSize, 5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(2.7*uiSize);
      text("잔고", x+40, y);
    }
    if (language == "english") {
      textSize(2.4*uiSize);
      text("Wallet", x+40, y);
    }
    image(money, x-100, y, 80, 80);
  }
}

void b_korea(float x, float y) {
  koreaX = x;
  koreaY = y;
  rectMode(CENTER);
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
      mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
      image(empty_UI, x, y, 11*uiSize, 4.5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.4*uiSize);
        text("증시입장", x+40, y);
      }
      if (language == "english") {
        textSize(1.4*uiSize);
        text("Market", x+40, y);
      }
      image(market, x-100, y, 70, 70);
    } else {
      image(empty_UI, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.6*uiSize);
        text("증시입장", x+40, y);
      }
      if (language == "english") {
        textSize(1.6*uiSize);
        text("Market", x+40, y);
      }
      image(market, x-100, y, 80, 80);
    }
  } else {
    image(empty_UI, x, y, 12*uiSize, 5*uiSize);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.6*uiSize);
      text("증시입장", x+40, y);
    }
    if (language == "english") {
      textSize(1.6*uiSize);
      text("Market", x+40, y);
    }
    image(market, x-100, y, 80, 80);
  }
}

void show_news(float x, float y) {
  snX = x;
  snY = y;
  if (showNews == false) triangle(x-0.5*uiSize, y-0.5*uiSize, x+0.5*uiSize, y-0.5*uiSize, x, y+0.5*uiSize);
  if (showNews == true) triangle(x, y-0.5*uiSize, x+0.5*uiSize, y+0.5*uiSize, x-0.5*uiSize, y+0.5*uiSize);
}

void show_time(float x, float y) {
  textFont(uiFont);
  fill(255);
  textAlign(CENTER, CENTER);
  if (language == "korean") {
    textSize(3*uiSize);
    text(day + " 일차", x-150, y-25);
    textSize(1.5*uiSize);
    text(hour + "시 " + min + "분", x+100, y-25);
  }
  if (language == "english") {
    textSize(3*uiSize);
    text("DAY " + day, x-125, y-25);
    textSize(1.5*uiSize);
    text(hour + "h " + min + "m", x+75, y-25);
  }
}

void show_jang(float x, float y) {
  rectMode(CENTER);
  fill(#487AFF, 150);
  image(wnowMarket, x, y, 300, 60);
  textFont(uiFont);
  fill(0);
  textAlign(CENTER, CENTER);
  if (hour > 2 && hour < 23) {
    if (language == "korean") {
      textSize(0.8*uiSize);
      text("현재 국내증시 거래중", x, y);
    }
    if (language == "english") {
      textSize(0.6*uiSize);
      text("Korean Market is opened now", x, y);
    }
    nowMarket = "국내";
  }
  if (hour > 22 || hour < 3) {
    if (language == "korean") {
      textSize(0.8*uiSize);
      text("휴장", x, y);
    }
    if (language == "english") {
      textSize(0.8*uiSize);
      text("Closed", x, y);
    }
    nowMarket = "휴장";
  }
  textSize(3*uiSize);
}
