String quest[] = new String[21];
String questTitle[] = new String[21];
String questTitleH[] = new String[21];
String hiddenQuest[] = new String[11];

String Equest[] = new String[21];
String EquestTitle[] = new String[21];
String EquestTitleH[] = new String[21];
String EhiddenQuest[] = new String[11];

boolean cQ[] = new boolean[21];
boolean chQ[] = new boolean[11];

//퀘스트 관련 변수
int buyDay[] = new int[20]; //매수한 날짜
boolean meas[] = new boolean[20];

int plusHour[] = new int[20]; //이익이 된 시간
boolean plus[] = new boolean[20]; //이익인가?
boolean quest8_c[] = new boolean[20];
int quest8_complete = 0;

boolean haveDown[] = new boolean[21];
boolean showC9 = false;

int minusDay[] = new int[21];

int recentPur = -1;
int recentPurDay = -1;
int recentPurHour = -1;

int exint[] = new int[20];

int boyStack=0;

boolean noRisk[] = new boolean[20];
//

void setQ() {
  for (int i=0; i<20; i++) {
    exint[i] = 0;
  }
  for (int i=0; i<21; i++) {
    cQ[i] = false;
    haveDown[i] = false;
    mi[i] = -1;
    mih[i] = -1;
  }
  for (int i=0; i<11; i++) {
    chQ[i] = false;
  }
  quest[1] = "산뜻한 출발 :: 초기 자금의 20%만큼의 수익을 내세요.";
  quest[2] = "큰그림 :: 주식을 매수 후 3일동안 매도하지 마세요.";
  quest[3] = "이제 좀 치는데? :: 하나의 주식으로 30%의 수익을 내세요.";
  quest[4] = "달걀은 여러 바구니에.. :: 모든 종류의 주식을 매수하세요.";
  quest[5] = "못먹어도 고 :: 한 가지의 주식에 전재산을 투자하세요.";
  quest[6] = "일편단심 :: 하나의 주식으로 200%의 수익을 내세요";
  quest[7] = "존.승 :: -30%의 수익률이 +30%가 될 때 까지 존버하세요.";
  quest[8] = "제 1원칙 :: 3개의 주식에서 5시간동안 손해를 보지 마세요.";
  quest[9] = "칼손절 :: 주가가 떨어지기 전에 모두 매도하세요.";
  quest[10] = "미련남 :: 손해를 유지한 채로 하루동안 가지고 있으세요.";
  quest[11] = "인생이 그런거야 :: 6개의 주식에서 모두 손해를 보세요.";
  quest[12] = "인생의 동반자 :: 3일동안 한 가지 주식만 매수하세요.";
  quest[13] = "개미털기 :: 한 번에 100주 이상 매도하세요.";
  quest[14] = "계획된 물타기 :: -30%이상 손해 본 주식을 보유 수 이상 매수하세요";
  quest[15] = "리틀 랄로 :: 4천을 잃으세요";
  quest[16] = "미래를 본 불타기 :: 20%이상 이득 본 주식을 보유 수 이상 매수하세요";
  quest[17] = "졸업 :: 총 수익률 1000%를 달성하세요";
  quest[18] = "고점 매수 :: 일일 상승률 25% 이상인 주식을 매수하세요";
  quest[19] = "저점 매수 :: 일일 하락율 -25% 이상인 주식을 매수하세요";
  quest[20] = "기회비용 :: -50% 이상의 손해를 보고 매도하세요";
  //
  questTitle[1] = "산뜻한 출발";
  questTitle[2] = "큰그림";
  questTitle[3] = "이제 좀 치는데?";
  questTitle[4] = "달걀은 여러 바구니에..";
  questTitle[5] = "못먹어도 고";
  questTitle[6] = "일편단심";
  questTitle[7] = "존.승!";
  questTitle[8] = "제 1원칙";
  questTitle[9] = "칼손절";
  questTitle[10] = "미련남";
  questTitle[11] = "인생이 그런거야";
  questTitle[12] = "인생의 동반자";
  questTitle[13] = "개미털기";
  questTitle[14] = "계획된 물타기";
  questTitle[15] = "리틀 랄로";
  questTitle[16] = "미래를 본 불타기";
  questTitle[17] = "졸업";
  questTitle[18] = "고점 매수";
  questTitle[19] = "저점 매수";
  questTitle[20] = "기회비용";
  //
  hiddenQuest[1] = "탕진 :: 수익률 -99%를 달성하세요";
  hiddenQuest[2] = "상남자 :: 주식을 매수 후 메인화면에 10시간동안 머무세요."  ;
  hiddenQuest[3] = "개똥손 :: 매수 후 3시간 안에 수익률 -50%를 달성하세요.";
  hiddenQuest[4] = "이게 되네 :: 주가 하락 없이 10시간을 유지하세요.";
  hiddenQuest[5] = "생일 :: 예수금 20050407원을 만드세요.";
  hiddenQuest[6] = "살상연희 :: 4개의 주식에서 44주를 보유하세요";
  hiddenQuest[7] = "아웃사이더 :: 배속버튼을 꾸욱 누르세요.";
  hiddenQuest[8] = "짠돌이 :: 잔고 버튼을 1시간 안에 10번 누르세요.";
  hiddenQuest[9] = "주가조작 :: 1시간 안에 한 주식을 10번 거래하세요.";
  hiddenQuest[10] = "코드를 뜯어봤군요? :: 모든 히든퀘스트를 완료하세요";
  //
  questTitleH[1] = "탕진";
  questTitleH[2] = "상남자";
  questTitleH[3] = "개똥손";
  questTitleH[4] = "이게 되네";
  questTitleH[5] = "생일";
  questTitleH[6] = "살상연희";
  questTitleH[7] = "아웃사이더";
  questTitleH[8] = "짠돌이";
  questTitleH[9] = "주가조작";
  questTitleH[10] = "코드를 뜯어봤군요?";
  //
  Equest[1] = "Fresh start :: Make 20% earn totally";
  Equest[2] = "BigPicture :: Don't sell your stock after buying";
  Equest[3] = "No noob! :: Make 30% earn with one stock";
  Equest[4] = "Eggs in.. :: Buy all stocks";
  Equest[5] = "Idontknow~ :: Spend all your money in one stock";
  Equest[6] = "Trust :: Make 200% earn with one stock";
  Equest[7] = "Don't giveup! :: Don't give up since -30% loss to +30% earn";
  Equest[8] = "First rule :: Do not make loss in 3 stocks for 5 hours";
  Equest[9] = "Speed :: Sell all of you have in one stock without loss";
  Equest[10] = "Idixt :: Get your stock for 1 day with loss";
  Equest[11] = "Life is... :: Make loss in all stocks";
  Equest[12] = "Youaremy :: Buy only one stock for 3 days";
  Equest[13] = "no R-investor :: Sell up to 100s for once";
  Equest[14] = "Average down :: Buy your stocks that makes -30% loss at least you have";
  Equest[15] = "Rallo :: make -400,000,00won loss";
  Equest[16] = "Average up :: Buy your stocks that makes +20% earn at least you have";
  Equest[17] = "Graduation :: Make 1000% earn totally";
  Equest[18] = "Buy high :: Buy stocks whose daily up is +25%";
  Equest[19] = "Buy low :: Buy stocks whose daily down -25%";
  Equest[20] = "opportunity cost :: Sell your stock that makes -50% loss";
  //
  EquestTitle[1] = "Fresh start";
  EquestTitle[2] = "BigPicture";
  EquestTitle[3] = "No noob!";
  EquestTitle[4] = "Eggs in..";
  EquestTitle[5] = "Idontknow~";
  EquestTitle[6] = "Trust";
  EquestTitle[7] = "Don't giveup!";
  EquestTitle[8] = "First rule";
  EquestTitle[9] = "Speed";
  EquestTitle[10] = "Idixt";
  EquestTitle[11] = "Life is...";
  EquestTitle[12] = "Youaremy";
  EquestTitle[13] = "no R-investor";
  EquestTitle[14] = "Average down";
  EquestTitle[15] = "Rallo";
  EquestTitle[16] = "Average up";
  EquestTitle[17] = "Graduation";
  EquestTitle[18] = "Buy high";
  EquestTitle[19] = "Buy low";
  EquestTitle[20] = "opportunity cost";
  //
  EhiddenQuest[1] = "Loser :: Make -99% loss";
  EhiddenQuest[2] = "Real man :: Stay in main after buying stock"  ;
  EhiddenQuest[3] = "Unlucky :: Make -50% in 3 hours";
  EhiddenQuest[4] = "Real?? :: Stay 10 hours without any loss";
  EhiddenQuest[5] = "Birthday :: Make 200,504,07won";
  EhiddenQuest[6] = "Deadly Flourish :: Get total 44s in 4 stocks";
  EhiddenQuest[7] = "Outsider :: Pressssssssssssssss 'speed'";
  EhiddenQuest[8] = "Miser :: Press 'wallet' 10 times in hour.";
  EhiddenQuest[9] = "PriceControl :: Trade 10 times in hour";
  EhiddenQuest[10] = "You incoder? :: complete all hidden quests";
  //
  EquestTitleH[1] = "Loser";
  EquestTitleH[2] = "Real man";
  EquestTitleH[3] = "Unlucky";
  EquestTitleH[4] = "Real??";
  EquestTitleH[5] = "Birthday";
  EquestTitleH[6] = "Deadly Flourish";
  EquestTitleH[7] = "Outsider";
  EquestTitleH[8] = "Miser";
  EquestTitleH[9] = "PriceControl";
  EquestTitleH[10] = "You incoder?";
}

float mi[] = new float[21];
float mih[] = new float[21];

void checkQ() {
  //히든 1번
  if (chQ[1] == false) {
    if (screenMode != "start" && screenMode != "setMoney" && screenMode != "setStock1") {
      float totalStock=0;
      for (int i=0; i<20; i++) {
        if (have[i] > 0) totalStock+=price[i]*have[i];
      }
      if (totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama <= startMoney*0.01) {
        delayCh(1);
      }
    }
  }
  //히든 5번
  if (chQ[5] == false) {
    if (myMoney == 20050407) {
      delayCh(5);
    }
  }
  //히든 6번
  if (chQ[6] == false) {
    int hs = 0;
    int ts = 0;
    for (int i=0; i<6; i++) {
      if (have[ran[i]] > 0) {
        hs++;
        ts+=have[ran[i]];
      }
    }
    if (hs == 4) {
      if (ts == 44) {
        delayCh(6);
      }
    }
  }
  //히든 7번
  if (chQ[7] == false) {
    if (spint >= 5) {
      delayCh(7);
    }
  }
  //히든 8번
  if (chQ[8] == false) {
    if (walletint >= 10) {
      delayCh(8);
    }
  }
  //히든 9번
  if (chQ[9] == false) {
    for (int i=0; i<20; i++) {
      if (exint[i] >= 10) {
        delayCh(9);
      }
    }
  }
  //히든 10번
  if (chQ[10] == false) {
    if (chQ[1] == true && chQ[2] == true
      && chQ[3] == true && chQ[4] == true && chQ[5] == true && chQ[6] == true
      && chQ[7] == true && chQ[8] == true && chQ[9] == true) {
      delayCh(10);
    }
  }
  //1번 퀘스트
  if (playing == true) {
    if (cQ[1] == false) {
      if (totalE >= 20) {
        delayC(1);
      }
    }
  }
  //2번 퀘스트
  if (cQ[2] == false) {
    for (int i=0; i<20; i++) {
      if (have[i] > 0) {
        if (day >= buyDay[i]+3) {
          delayC(2);
        }
      }
    }
  }
  //3번 퀘스트
  if (cQ[3] == false) {
    for (int i=0; i<6; i++) {
      if (stockE[i] >= 30) {
        delayC(3);
      }
    }
  }
  //4번 퀘스트
  if (cQ[4] == false) {
    if (have[ran[0]] > 0 && have[ran[1]] > 0 && have[ran[2]] > 0 && have[ran[3]] > 0 && have[ran[4]] > 0 && have[ran[5]] > 0) {
      delayC(4);
    }
  }
  //5번 퀘스트
  if (cQ[5] == false) {
    for (int i=0; i<6; i++) {
      if (have[ran[i]] > 0) {
        for (int a=0; a<6; a++) {
          if (a != i) {
            if (have[ran[a]] == 0) {
              if (myMoney < price[ran[i]]) {
                delayC(5);
              }
            }
          }
        }
      }
    }
  }
  //6번 퀘스트
  if (cQ[6] == false) {
    for (int i=0; i<6; i++) {
      if (stockE[i] >= 200) {
        delayC(6);
      }
    }
  }
  //7번 퀘스트
  if (cQ[7] == false) {
    for (int i=0; i<6; i++) {
      if (meas[ran[i]] == true) {
        if (have[ran[i]] < 1) meas[i] = false;
      }
      if (have[ran[i]] > 0) {
        if (meas[i] == false) {
          if (stockE[i] <= -30) {
            meas[i] = true;
          }
        } else if (meas[i] == true) {
          if (stockE[i] >= 30) {
            delayC(7);
          }
        }
      }
    }
  }
  //8번 퀘스트
  if (cQ[8] == false) {
    for (int i=0; i<6; i++) {
      if (quest8_c[ran[i]] == false) {
        if (stockE[i] > 0) {
          if (plus[ran[i]] == false) {
            plus[ran[i]] = true;
            plusHour[ran[i]] = hour;
          } else if (plus[ran[i]] == true) {
            if (hour >= plusHour[ran[i]]+3) {
              quest8_complete++;
              quest8_c[ran[i]] = true;
              if (quest8_complete >= 3) {
                delayC(8);
              }
            }
          }
        } else if (stockE[i] < 0) {
          if (plus[ran[i]] == true) {
            plus[ran[i]] = false;
          }
        }
      }
    }
  }
  //9번 퀘스트
  if (cQ[9] == false) {
    for (int i=0; i<6; i++) {
      if (have[ran[i]] > 0) {
        if (stockE[i] < 0) {
          haveDown[ran[i]] = true;
        }
      } else haveDown[ran[i]] = false;
    }
    if (showC9 == true) {
      delayC(9);
      showC9 = false;
    }
  }
  //10번 퀘스트
  if (cQ[10] == false) {
    for (int i=0; i<6; i++) {
      if (have[ran[i]] > 0 ) {
        if (stockE[i] > 0) minusDay[ran[i]] = day;
        else if (stockE[i] < 0) {
          if (day >= minusDay[ran[i]]+1) {
            delayC(10);
          }
        }
      }
    }
  }
  //11번 퀘스트
  if (cQ[11] == false) {
    for (int i=0; i<6; i++) {
      if (have[ran[0]] > 0 && have[ran[1]] > 0 && have[ran[2]] > 0 && have[ran[3]] > 0 && have[ran[4]] > 0 && have[ran[5]] > 0) {
        if (stockE[0] < 0 && stockE[1] < 0 && stockE[2] < 0 && stockE[3] < 0 && stockE[4] < 0 && stockE[5] < 0) {
          delayC(11);
        }
      }
    }
  }
  //12번 퀘스트
  if (cQ[12] == false) {
    if (recentPurDay != -1 && recentPurHour != -1) {
      if (day >= recentPurDay+1 && hour >= recentPurHour+1) {
        delayC(12);
      }
    }
  }
  //17번 퀘스트
  if (cQ[17] == false) {
    if (totalE >= 1000) {
      delayC(17);
    }
  }
}

void delayCh(int i) {
  if (mi[i] == -1) mi[i] = millis();
  else if (millis() < mi[i]+3000) completeH(i);
  else if (millis() >= mi[i]+3000) {
    mi[i] = -1;
    chQ[i] = true;
  }
}

void completeH(int i) {
  imageMode(CENTER);
  image(squest, width-300, 100, 500, 150);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(0.9*uiSize);
    text("[히든 Q!] " + questTitleH[i] + " 성공!", width-300, 100);
  }
  if (language == "english") {
    textSize(0.6*uiSize);
    text("[hidden Q!] " + EquestTitleH[i] + " success!", width-300, 100);
  }
}

void delayC(int i) {
  if (mi[i] == -1) mi[i] = millis();
  else if (millis() < mi[i]+3000) complete(i);
  else if (millis() >= mi[i]+3000) {
    mi[i] = -1;
    cQ[i] = true;
  }
}

void complete(int i) {
  imageMode(CENTER);
  image(squest, width-300, 100, 500, 150);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(0.9*uiSize);
    text("[Q] " + questTitle[i] + " 성공!", width-300, 100);
  }
  if (language == "english") {
    textSize(0.7*uiSize);
    text("[Q] " + EquestTitle[i] + " success!", width-300, 100);
  }
}
