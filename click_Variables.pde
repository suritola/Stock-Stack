String clickedWhat;
int clickedInt;

void mouseReleased() {
  if (clickedWhat == "answer") {
    clickedWhat = "";
    if (title == false && showSetting == false) {
      if (select[clickedInt] == answer) {
        if (what == "×") mathPoint+=5;
        else mathPoint+=3;
        roundClear = true;
        correct.amp(-2);
        correct.play();
      } else {
        wrong.play();
        if (mathPoint >= 2) mathPoint-=2;
        else mathPoint = 0;
      }
    }
  }
  if (clickedWhat == "100000down") {
    clickedWhat = "";
    coin.rate(1);
    coin.play();
    if (price[clickedInt]-100000 >= 10000) {
      price[clickedInt]-=100000;
      total[clickedInt] = price[clickedInt]*470;
    } else {
      if (language == "korean") showError("최소 금액은 10,000원 입니다.", 2);
      if (language == "english") showError("Start Money has to be 10,000won at least", 1.2);
      price[clickedInt] = 10000;
      total[clickedInt] = price[clickedInt]*470;
    }
  }
  if (clickedWhat == "10000down") {
    clickedWhat = "";
    coin.rate(1);
    coin.play();
    if (price[clickedInt]-10000 >= 10000) {
      price[clickedInt]-=10000;
      total[clickedInt] = price[clickedInt]*470;
    } else {
      if (language == "korean") showError("최소 금액은 10,000원 입니다.", 2);
      if (language == "english") showError("Start Money has to be 10,000won at least", 1.2);
      price[clickedInt] = 10000;
      total[clickedInt] = price[clickedInt]*470;
    }
  }
  if (clickedWhat == "10000up") {
    clickedWhat = "";
    coin.rate(2);
    coin.play();
    price[clickedInt]+=10000;
    total[clickedInt] = price[clickedInt]*470;
  }
  if (clickedWhat == "100000up") {
    clickedWhat = "";
    coin.rate(2);
    coin.play();
    price[clickedInt]+=100000;
    total[clickedInt] = price[clickedInt]*470;
  }
  if (clickedWhat == "setting") {
    clickedWhat = "";
    ButtonClick.play();
    if (title == true) title = false;
  }
  if (mouseX <= workX+6*uiSize && mouseX >= workX-6*uiSize &&
    mouseY <= workY+2.5*uiSize && mouseY >= workY-2.5*uiSize) {
    if (screenMode == "main" && showSetting == false) {
      ButtonClick.play();
      screenMode = "workList";
    }
  }
  if (mouseX <= koreaX+7.5*uiSize && mouseX >= koreaX-7.5*uiSize &&
    mouseY <= koreaY+2.5*uiSize && mouseY >= koreaY-2.5*uiSize) {
    if (screenMode == "main") {
      ButtonClick.play();
      if (nowMarket == "국내") {
        screenMode = "koreaMarket";
      } else {
        if (language == "korean") showError("현재 국내증시가 열리지 않았습니다.", 1.5);
        if (language == "english") showError("Korean Market has not opened yet", 1.5);
      }
    }
  }
  if (mouseX <= earX+7.5*uiSize && mouseX >= earX-7.5*uiSize &&
    mouseY <= earY+2.5*uiSize && mouseY >= earY-2.5*uiSize) {
    if (screenMode == "start") {
      if (lastSavedDay != -1) {
        screenMode = "main";
      } else {
        if (language == "korean") showError("저장된 파일이 없습니다", 2);
        else showError("No Found Saved", 2);
      }
    }
  }
  if (mouseX <= startX+7.5*uiSize && mouseX >= startX-7.5*uiSize &&
    mouseY <= startY+2.5*uiSize && mouseY >= startY-2.5*uiSize) {
    if (screenMode == "start") {
      ButtonClick.play();
      bgm.stop();
      AllReset();
      AllLoad();
      textOutput = 2000000;
      screenMode = "setMoney";
    }
  }
  if (mouseX <= helpX+3*uiSize && mouseX >= helpX-3*uiSize &&
    mouseY <= helpY+1.25*uiSize && mouseY >= helpY-1.25*uiSize) {
    if (screenMode == "start") {
      screenMode = "help";
      ButtonClick.play();
    }
  }
  if (mouseX <= backX+3*uiSize && mouseX >= backX-3*uiSize &&
    mouseY <= backY+1.25*uiSize && mouseY >= backY-1.25*uiSize) {
    ButtonClick.play();
    if (showSetting == false) {
      if (screenMode == "help") screenMode = "start";
      if (screenMode == "wallet" || screenMode == "koreaMarket" || screenMode == "forMarket") screenMode = "main";
      if (screenMode.contains ("whoga")) screenMode = "wallet";
      if (screenMode.contains ("hoga")) screenMode = "koreaMarket";
      if (screenMode == "quest1") screenMode = "main";
      if (screenMode == "quest2") screenMode = "quest1";
      if (screenMode == "setMoney") screenMode = "start";
      if (screenMode == "setStock1") screenMode = "setMoney";
      if (screenMode == "workList") screenMode = "main";
      if (screenMode == "bank") screenMode = "main";
      if (screenMode == "orangeBank") {
        screenMode = "bank";
        textValue = 0;
        textOutput = 0;
        texting = false;
        for (int i=0; i<9; i++) textInt[i] = -1;
      }
      if (screenMode == "pigBank") {
        screenMode = "bank";
        textValue = 0;
        textOutput = 0;
        texting = false;
        for (int i=0; i<9; i++) textInt[i] = -1;
      }
      if (screenMode == "hamaBank") {
        screenMode = "bank";
        textValue = 0;
        textOutput = 0;
        texting = false;
        for (int i=0; i<9; i++) textInt[i] = -1;
      }
      if (screenMode == "hiddenQuest") {
        if (pastScreen == "quest1") screenMode = "quest1";
        if (pastScreen == "quest2") screenMode = "quest2";
      }
    }
    if (showSetting == true) showSetting = false;
  }
  if (mouseX <= questX+6*uiSize && mouseX >= questX-6*uiSize &&
    mouseY <= questY+2.5*uiSize && mouseY >= questY-2.5*uiSize) {
    fill(#78811E);
    if (screenMode == "main") {
      screenMode = "quest1";
      ButtonClick.play();
    } else {
      fill(#78811E);
    }
  }
  if (mouseX <= walletX+6*uiSize && mouseX >= walletX-6*uiSize &&
    mouseY <= walletY+2.5*uiSize && mouseY >= walletY-2.5*uiSize) {
    if (screenMode == "main") {
      screenMode = "wallet";
      ButtonClick.play();
    }
  }
  if (mouseX <= start2X+7.5*uiSize && mouseX >= start2X-7.5*uiSize &&
    mouseY <= start2Y+2.5*uiSize && mouseY >= start2Y-2.5*uiSize) {
    if (screenMode == "setMoney") {
      startMoney = textOutput;
      textOutput = 0;
      textValue = 0;
      stocks();
      ButtonClick.play();
      screenMode = "setStock1";
    }
    if (screenMode == "quest1") {
      ButtonClick.play();
      screenMode = "quest2";
    }
  }
  if (mouseX <= qstart2X+7.5*uiSize && mouseX >= qstart2X-7.5*uiSize &&
    mouseY <= qstart2Y+2.5*uiSize && mouseY >= qstart2Y-2.5*uiSize) {
    if (screenMode == "setMoney") {
      startMoney = textOutput;
      textOutput = 0;
      textValue = 0;
      stocks();
      ButtonClick.play();
      screenMode = "setStock1";
    }
    if (screenMode == "quest1") {
      ButtonClick.play();
      screenMode = "quest2";
    }
  }
  if (mouseX <= start3X+7.5*uiSize && mouseX >= start3X-7.5*uiSize &&
    mouseY <= start3Y+2.5*uiSize && mouseY >= start3Y-2.5*uiSize) {
    if (screenMode == "setStock1") {
      ButtonClick.play();
      myMoney = startMoney;
      screenMode = "main";
      setBank();
      playing = true;
      first = 0;
      save.setNumber("First", first, true);
    }
  }
  //
  if (mouseX <= s5tX+3*uiSize && mouseX >= s5tX-3*uiSize &&
    mouseY <= s5tY+1.25*uiSize && mouseY >= s5tY-1.25*uiSize) {
    if (screenMode == "setMoney") {
      if (myMoney-50000 >= 10000) myMoney-=50000;
      else {
        myMoney = 10000;
        if (language == "korean") showError("최소 금액은 10,000원 입니다.", 2);
        if (language == "english") showError("Start Money has to be 10,000won at least", 1.2);
      }
    }
  }
  if (mouseX <= shtX+3*uiSize && mouseX >= shtX-3*uiSize &&
    mouseY <= shtY+1.25*uiSize && mouseY >= shtY-1.25*uiSize) {
    if (screenMode == "setMoney") {
      if (myMoney-100000 >= 10000) myMoney-=100000;
      else {
        myMoney = 10000;
        if (language == "korean") showError("최소 금액은 10,000원 입니다.", 2);
        if (language == "english") showError("Start Money has to be 10,000won at least", 1.2);
      }
    }
  }
  if (mouseX <= snX+1*uiSize && mouseX >= snX-1*uiSize &&
    mouseY <= snY+1*uiSize && mouseY >= snY-1*uiSize) {
    if (screenMode == "main") {
      page.play();
      if (showNews == false) {
        showNews = true;
        for (int i=0; i<recent_news.length; i++) {
          showRecentNews[i] = true;
        }
      } else if (showNews == true) {
        showNews = false;
      }
    }
  }
  if (clickedWhat == "buyMax") {
    clickedWhat = "";
    marketP = true;
    if (screenMode.contains("hoga")) {
      int max= int((myMoney / int(price[clickedInt])));
      wantAmount = max;
      coin.play();
    }
  }
  if (clickedWhat == "sellMax") {
    clickedWhat = "";
    marketP = true;
    if (screenMode.contains("hoga")) {
      wantAmount = have[clickedInt];
      wantPrice = have[clickedInt]*price[clickedInt];
      coin.play();
    }
  }
  if (clickedWhat == "add1") {
    clickedWhat = "";
    coin.play();
    wantAmount++;
  }
  if (clickedWhat == "add10") {
    clickedWhat = "";
    coin.play();
    wantAmount+=10;
  }
  if (clickedWhat == "sub10") {
    clickedWhat = "";
    coin.play();
    if (wantAmount-10 > 0) wantAmount-=10;
    else {
      wantAmount = 0;
    }
  }
  if (clickedWhat == "sub1") {
    clickedWhat = "";
    coin.play();
    if (wantAmount-1 > 0) wantAmount-=1;
    else {
      wantAmount = 0;
    }
  }
  if (clickedWhat == "language") {
    clickedWhat = "";
    if (language == "korean") language = "english";
    else if (language == "english") language = "korean";
    if (language == "korean") windowTitle("주식 시뮬레이터");
    if (language == "english") windowTitle("Invest Simulator");
  }
  if (clickedWhat == "speed") {
    if (screenMode == "main") {
      clickedWhat = "";
      diring.play();
      if (speed < 1.5) {
        speed = 1.5;
      } else if (speed < 2) {
        speed = 2;
      } else if (speed < 4) {
        speed = 4;
      } else {
        speed = 1;
        spint++;
      }
    }
  }
  if (screenMode.contains("hoga")) {
    if (clickedWhat == "buy") {
      clickedWhat = "";
      exint[clickedInt]++;
      if (wantAmount > 0) {
        if (wantPrice <= myMoney) {
          float im;
          im= ( (ave[clickedInt]*have[clickedInt]) + wantPrice );
          if (cQ[14] == false) {
            if (have[clickedInt] > 0) {
              for (int a=0; a<6; a++) {
                if (ran[a] == clickedInt) {
                  if (stockE[a] < -30) {
                    if (wantAmount >= have[clickedInt]) {
                      delayC(14);
                    }
                  }
                }
              }
            }
          }
          if (cQ[16] == false) {
            if (have[clickedInt] > 0) {
              for (int a=0; a<6; a++) {
                if (ran[a] == clickedInt) {
                  if (stockE[a] > 20) {
                    if (wantAmount >= have[clickedInt]) {
                      delayC(16);
                    }
                  }
                }
              }
            }
          }
          if (cQ[18] == false) {
            if (dailyS[clickedInt] >= 25) {
              delayC(18);
            }
          }
          if (cQ[19] == false) {
            if (dailyS[clickedInt] <= -25) {
              delayC(19);
            }
          }
          myMoney-=wantPrice;
          casher.play();
          have[clickedInt]+=wantAmount;
          ave[clickedInt]=int(im/have[clickedInt]);
          buyPrice[clickedInt]+=wantPrice;
          if (cQ[9] == false) noRisk[clickedInt] = true;
          wantPrice=0;
          wantAmount=0;
          if (chQ[2] == false) boyStack=0;
          if (cQ[12] == false) {
            if (recentPur != clickedInt) {
              recentPur = clickedInt;
              recentPurDay = day;
              recentPurHour = hour;
            }
          }
          if (cQ[10] == false) minusDay[clickedInt] = day;
          if (cQ[2] == false) buyDay[clickedInt] = day;
        } else {
          if (language == "korean") showError("돈이 부족합니다", 2);
          if (language == "english") showError("You have no enough money", 1.8);
        }
      } else {
        if (language == "korean") showError("매수수량을 설정해주세요", 2);
        if (language == "english") showError("Set how many stocks you will buy", 1.8);
      }
    }
    if (clickedWhat == "sell") {
      clickedWhat = "";
      exint[clickedInt]++;
      if (wantAmount > 0) {
        if (wantAmount <= have[clickedInt]) {
          if (cQ[20] == false) {
            for (int a=0; a<6; a++) {
              if (ran[a] == clickedInt) {
                if (stockE[a] < -50) {
                  delayC(20);
                }
              }
            }
          }
          have[clickedInt]-=wantAmount;
          myMoney+=wantPrice;
          if (cQ[13] == false) {
            if (wantAmount >= 100) delayC(13);
          }
          if (cQ[2] == false) buyDay[clickedInt] = day;
          if (cQ[9] == false) {
            if (have[clickedInt] == wantAmount) {
              if (haveDown[clickedInt] == false) {
                showC9 = true;
              }
            }
          }
          wantAmount=0;
          wantPrice=0;
          casher.play();
          if (cQ[9] == false && noRisk[clickedInt] == true && have[clickedInt] < 1) delayC(9);
        } else {
          if (language == "korean") showError("수량이 부족합니다", 2);
          if (language == "english") showError("You have no enough stocks", 1.8);
        }
      } else {
        if (language == "korean") showError("매도수량을 설정해주세요", 2);
        if (language == "english") showError("Set how many stocks you will sell", 1.8);
      }
    }
  }
}
