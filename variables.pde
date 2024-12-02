int first = 1;
String language = "korean";
boolean showSetting = false;

String screenMode; //초기 화면
boolean playing = false;
boolean seenHelp = false;

float totalE = 0;
float stockE[] = new float[6];

float dailyS[] = new float[20];

PFont uiFont; //한글 폰트

float uiSize = 30; // UI (User InterFace) 크기

boolean showNews = false; //뉴스 표시 onoff

float myMoney = 2000000; //예수금
float startMoney = 2000000;

String recent_news[] = new String[5]; //최근 뉴스
boolean showRecentNews[] = new boolean[recent_news.length]; //최근 뉴스 표시onoff

int day=1; //n일차
int min=59; //분
int hour=4; //시

int ms = -1; //매 초 흐르는 시간.

String nowMarket;

float speed = 1;

String news[] = new String[20];
String Enews[] = new String[20];
String WhatNews[] = new String[20];

int lastSavedSec;
int lastSavedHour;
int lastSavedDay;
int lastSavedMonth;

void AllLoad() {
  bulletSetting();
  setNews();
  setQ();
  save.loadPref();
  lastSavedMonth = save.getInt("lastSavedMonth");
  lastSavedDay = save.getInt("lastSavedDay");
  lastSavedHour = save.getInt("lastSavedHour");
  lastSavedSec = save.getInt("lastSavedSec");
  save.setNumber("lastSavedDay", -1, true);
  save.setNumber("lastSavedHour", -1, true);
  save.setNumber("lastSavedSec", -1, true);
  depMoney_orange = save.getInt("depMoney_orange");
  depMoney_pig = save.getInt("depMoney_pig");
  depMoney_hama = save.getInt("depMoney_hama");
  interest_orange = save.getInt("interest_orange");
  interest_pig = save.getInt("interest_pig");
  interest_hama = save.getInt("interest_hama");
  bright = save.getFloat("bright");
  show_bright = save.getInt("show_bright");
  myMoney=save.getFloat("myMoney");
  first=save.getInt("First");
  startMoney = save.getFloat("startMoney");
  day = save.getInt("day");
  min = save.getInt("min");
  hour = save.getInt("hour");
  speed = save.getFloat("speed");
  totalS = save.getInt("totalS");
  if (save.getInt("language") == 1) language = "korean";
  if (save.getInt("language") == 2) language = "english";
  if (language == "korean") windowTitle("주식 시뮬레이터");
  if (language == "english") windowTitle("Invest Simulator");
  slider_volX = save.getFloat("musicVolume");
  show_vol_music = save.getInt("SmusicVolume");
  bgm = new SoundFile(this, "sounds/BGM.mp3");
  for (int i=0; i<6; i++) {
    price[ran[i]] = save.getFloat("price" + i);
    ran[i] = save.getInt("No. " + i);
    have[ran[i]] = save.getInt("HaveStock " + i);
    stockE[i] = save.getFloat("stockE" + i);
    dailyS[ran[i]] = save.getFloat("dailyS" + i);
    change[i] = save.getInt("change" + i);
    traffic[ran[i]] = save.getInt("traffic" + i);
    ave[ran[i]] = save.getInt("ave" + i);
    price[ran[i]] = save.getFloat("price" + i);
  }
  for (int i=0; i<5; i++) {
    if (save.getInt("workDone" + i) == 0) workDone[i] = false;
    if (save.getInt("workDone" + i) == 1) workDone[i] = true;
  }
  for (int i=0; i<1920; i++) {
    for (int a=0; a<20; a++) {
      graphPrice[a][i] = -1;
    }
  }
  for (int i = 0; i<8; i++) {
    textInt[i] = -1;
  }
  for (int i=0; i<21; i++) {
    if (save.getInt("quest" + i) == 1) cQ[i] = true;
    if (save.getInt("quest" + i) == 0) cQ[i] = false;
  }
  for (int i=0; i<11; i++) {
    if (save.getInt("Hquest" + i) == 1) chQ[i] = true;
    if (save.getInt("Hquest" + i) == 0) chQ[i] = false;
  }
  for (int i=0; i<20; i++) {
    name[i] = save.getText("name" + i);
    Ename[i] = save.getText("Ename" + i);
    save_price[i] = save.getFloat("save_price" + i);
    buyDay[i] = save.getInt("buyDay" + i);
    if (save.getInt("meas" + i) == 1) meas[i] = true;
    if (save.getInt("meas" + i) == 0) meas[i] = false;
    plusHour[i] = save.getInt("plusHour" + i);
    if (save.getInt("plus" + i) == 1) plus[i] = true;
    if (save.getInt("plus" + i) == 0) plus[i] = false;
    if (save.getInt("quest8_c" + i) == 1) quest8_c[i] = true;
    if (save.getInt("quest8_c" + i) == 0) quest8_c[i] = false;
    exint[i] = save.getInt("exint" + i);
    if (save.getInt("noRisk" + i) == 1) noRisk[i] = true;
    if (save.getInt("noRisk" + i) == 0) noRisk[i] = false;
  }
  boyStack = save.getInt("boyStack");
  for (int i=0; i<21; i++) {
    if (save.getInt("haveDown" + i) == 1) haveDown[i] = true;
    if (save.getInt("haveDown" + i) == 0) haveDown[i] = false;
    minusDay[i] = save.getInt("minusDay" + i);
  }
  depHour = save.getInt("depHour");
  recentPur = save.getInt("recentPur");
  recentPurDay = save.getInt("recentPurDay");
  recentPurHour = save.getInt("recentPurHour");
  if (save.getInt("showC9") == 1) showC9 = true;
  if (save.getInt("showC9") == 0) showC9 = false;
  quest8_complete = save.getInt("quest8_complete");
}

void AllReset() {
  first = 1;
  save.setNumber("lastSavedMonth", -1, true);
  save.setNumber("lastSavedDay", -1, true);
  save.setNumber("lastSavedHour", -1, true);
  save.setNumber("lastSavedSec", -1, true);
  save.setNumber("myMoney", 2000000, true);
  save.setNumber("startMoney", 2000000, true);
  save.setNumber("First", 1, true);
  save.setNumber("day", 1, true);
  save.setNumber("min", 59, true);
  save.setNumber("hour", 4, true);
  save.setNumber("speed", 1, true);
  save.setNumber("totalS", 0, true);
  save.setNumber("totalE", 0, true);
  for (int i=0; i<5; i++) save.setNumber("workDone" + i, 0, true);
  if (language == "korean") save.setNumber("language", 1, true);
  if (language == "english") save.setNumber("language", 2, true);
  for (int i=0; i<20; i++) save.setNumber("save_price" + i, 0, true);
  for (int i=0; i<20; i++) save.setText("name" + i, name[i], true);
  for (int i=0; i<20; i++) save.setText("Ename" + i, Ename[i], true);
  for (int i=0; i<6; i++) save.setNumber("No. " + i, ran[i], true);
  for (int i=0; i<6; i++) save.setNumber("HaveStock " + i, 0, true);
  for (int i=0; i<6; i++) save.setNumber("stockE" + i, 0, true);
  for (int i=0; i<6; i++) save.setNumber("dailyS" + i, 0, true);
  for (int i=0; i<6; i++) save.setNumber("change" + i, 1, true);
  for (int i=0; i<6; i++) save.setNumber("traffic" + i, traffic[ran[i]], true);
  for (int i=0; i<6; i++) save.setNumber("ave" + i, ave[ran[i]], true);
  for (int i=0; i<6; i++) save.setNumber("price" + i, price[ran[i]], true);
  for (int i=0; i< 21; i++) save.setNumber("quest" + i, 0, true);
  for (int i=0; i< 11; i++) save.setNumber("Hquest" + i, 0, true);
  for (int i=0; i<20; i++) save.setNumber("buyDay" + i, 1, true);
  for (int i=0; i<20; i++) save.setNumber("meas" + i, 0, true);
  for (int i=0; i<20; i++) save.setNumber("plusHour" + i, 0, true);
  for (int i=0; i<20; i++) save.setNumber("plus" + i, 0, true);
  for (int i=0; i<20; i++) save.setNumber("quest8_c" + i, 0, true);
  save.setNumber("depMoney_orange", 0, true);
  save.setNumber("depMoney_pig", 0, true);
  save.setNumber("depMoney_hama", 0, true);
  save.setNumber("interest_orange", 0, true);
  save.setNumber("depHour", 1, true);
  save.setNumber("interest_pig", 0, true);
  save.setNumber("interest_hama", 0, true);
  save.setNumber("bright", bright, true);
  save.setNumber("show_bright", show_bright, true);
  save.setNumber("quest8_complete", 0, true);
  for (int i=0; i<21; i++) {
    save.setNumber("haveDown" + i, 0, true);
    save.setNumber("showC9", 0, true);
  }
  for (int i=0; i<21; i++) save.setNumber("minusDay" + i, 1, true);
  save.setNumber("recentPur", -1, true);
  save.setNumber("recentPurDay", -1, true);
  save.setNumber("recentPurHour", -1, true);
  for (int i=0; i<20; i++) save.setNumber("exint" + i, 0, true);
  save.setNumber("boyStack", 0, true);
  for (int i=0; i<20; i++) save.setNumber("noRisk" + i, 0, true);
  save.savePref();
}

void AllSave() {
  if (screenMode != "setStock1" && screenMode != "setMoney" && screenMode != "help") {
    if (screenMode == "start" && lastSavedMonth != -1) {
      lastSavedMonth = month();
      lastSavedDay = day();
      lastSavedHour = hour();
      lastSavedSec = minute();
      save.setNumber("lastSavedMonth", lastSavedMonth, true);
      save.setNumber("lastSavedDay", lastSavedDay, true);
      save.setNumber("lastSavedHour", lastSavedHour, true);
      save.setNumber("lastSavedSec", lastSavedSec, true);
    }
    if (screenMode == "start" && lastSavedMonth == -1) {
      save.setNumber("lastSavedMonth", -1, true);
      save.setNumber("lastSavedDay", -1, true);
      save.setNumber("lastSavedHour", -1, true);
      save.setNumber("lastSavedSec", -1, true);
    }
    if (screenMode != "start") {
      lastSavedMonth = month();
      lastSavedDay = day();
      lastSavedHour = hour();
      lastSavedSec = minute();
      save.setNumber("lastSavedMonth", lastSavedMonth, true);
      save.setNumber("lastSavedDay", lastSavedDay, true);
      save.setNumber("lastSavedHour", lastSavedHour, true);
      save.setNumber("lastSavedSec", lastSavedSec, true);
    }
  } else {
    save.setNumber("lastSavedMonth", -1, true);
    save.setNumber("lastSavedDay", -1, true);
    save.setNumber("lastSavedHour", -1, true);
    save.setNumber("lastSavedSec", -1, true);
  }
  save.setNumber("myMoney", myMoney, true);
  save.setNumber("startMoney", startMoney, true);
  save.setNumber("First", first, true);
  save.setNumber("day", day, true);
  save.setNumber("min", min, true);
  save.setNumber("hour", hour, true);
  save.setNumber("speed", speed, true);
  save.setNumber("totalS", totalS, true);
  save.setNumber("totalE", totalE, true);
  save.setNumber("SmusicVolume", show_vol_music, true);
  save.setNumber("musicVolume", slider_volX, true);
  save.setNumber("bright", bright, true);
  save.setNumber("show_bright", show_bright, true);
  save.setNumber("depMoney_orange", depMoney_orange, true);
  save.setNumber("depMoney_pig", depMoney_pig, true);
  save.setNumber("depMoney_hama", depMoney_hama, true);
  save.setNumber("interest_orange", interest_orange, true);
  save.setNumber("depHour", depHour, true);
  save.setNumber("interest_pig", interest_pig, true);
  save.setNumber("interest_hama", interest_hama, true);
  if (language == "korean") save.setNumber("language", 1, true);
  if (language == "english") save.setNumber("language", 2, true);
  for (int i=0; i<5; i++) {
    if (workDone[i] == true) save.setNumber("workDone" + i, 1, true);
    if (workDone[i] == false) save.setNumber("workDone" + i, 0, true);
  }
  for (int i=0; i<20; i++) save.setText("name" + i, name[i], true);
  for (int i=0; i<20; i++) save.setText("Ename" + i, Ename[i], true);
  for (int i=0; i<6; i++) save.setNumber("No. " + i, ran[i], true);
  for (int i=0; i<6; i++) save.setNumber("HaveStock " + i, have[ran[i]], true);
  for (int i=0; i<6; i++) save.setNumber("stockE" + i, stockE[i], true);
  for (int i=0; i<6; i++) save.setNumber("dailyS" + i, dailyS[ran[i]], true);
  for (int i=0; i<6; i++) save.setNumber("change" + i, change[i], true);
  for (int i=0; i<6; i++) save.setNumber("traffic" + i, traffic[ran[i]], true);
  for (int i=0; i<6; i++) save.setNumber("ave" + i, ave[ran[i]], true);
  for (int i=0; i<6; i++) save.setNumber("price" + i, price[ran[i]], true);
  for (int i=0; i<20; i++) save.setNumber("save_price" + i, save_price[i], true);
  for (int i=0; i< 21; i++) {
    if (cQ[i] == true) save.setNumber("quest" + i, 1, true);
    if (cQ[i] == false) save.setNumber("quest" + i, 0, true);
  }
  for (int i=0; i< 11; i++) {
    if (chQ[i] == true) save.setNumber("Hquest" + i, 1, true);
    if (chQ[i] == false) save.setNumber("Hquest" + i, 0, true);
  }
  for (int i=0; i<20; i++) save.setNumber("buyDay" + i, buyDay[i], true);
  for (int i=0; i<20; i++) {
    if (meas[i] == true) save.setNumber("meas" + i, 1, true);
    if (meas[i] == false) save.setNumber("meas" + i, 0, true);
  }
  for (int i=0; i<20; i++) save.setNumber("plusHour" + i, plusHour[i], true);
  for (int i=0; i<20; i++) {
    if (plus[i] == true) save.setNumber("plus" + i, 1, true);
    if (plus[i] == false) save.setNumber("plus" + i, 0, true);
  }
  for (int i=0; i<20; i++) {
    if (quest8_c[i] == true) save.setNumber("quest8_c" + i, 1, true);
    if (quest8_c[i] == false) save.setNumber("quest8_c" + i, 0, true);
  }
  save.setNumber("quest8_complete", quest8_complete, true);
  for (int i=0; i<21; i++) {
    if (haveDown[i] == true) save.setNumber("haveDown" + i, 1, true);
    if (haveDown[i] == false) save.setNumber("haveDown" + i, 0, true);
  }
  if (showC9 == true) save.setNumber("showC9", 1, true);
  if (showC9 == false) save.setNumber("showC9", 0, true);
  for (int i=0; i<21; i++) save.setNumber("minusDay" + i, minusDay[i], true);
  save.setNumber("recentPur", recentPur, true);
  save.setNumber("recentPurDay", recentPurDay, true);
  save.setNumber("recentPurHour", recentPurHour, true);
  for (int i=0; i<20; i++) save.setNumber("exint" + i, exint[i], true);
  save.setNumber("boyStack", boyStack, true);
  for (int i=0; i<20; i++) {
    if (noRisk[i] == true) save.setNumber("noRisk" + i, 1, true);
    if (noRisk[i] == false) save.setNumber("noRisk" + i, 0, true);
  }
  save.savePref();
}

void setNews() {
  news[0] = "호재터졌다! " + WhatNews[0] + " 주가 무섭게 오르는 이유";
  news[1] = WhatNews[1] + ", 65억 규모 유상증자 결정";
  news[2] = WhatNews[2] + ", 생산공장 대규모 화재 발생";
  news[3] = WhatNews[3] + ", 어려운 증권시장에 상장폐지 위험";
  news[4] = WhatNews[4] + ", 상품에서 발암물질 발견";
  news[5] = "최근 " + WhatNews[5] + "의 주가가 상승한 이유?";
  news[6] = "거품 덩어리라던 " + WhatNews[6] + ", 결국...";
  news[7] = "업종 최고 매출 " + WhatNews[7] + ", 해외시장 진출";
  news[8] = WhatNews[8] + ", 이사장 공금횡령 의혹";
  news[9] = "국내 최고 인기스타 박민근, " + WhatNews[9] + " 풀매수";
  news[10] = "민근이가 추천하는 종목? " + WhatNews[10] + "에 개미들 몰려.";
  news[11] = "호재터졌다! " + WhatNews[11] + " 주가 무섭게 오르는 이유";
  news[12] = "호재터졌다! " + WhatNews[12] + " 주가 무섭게 오르는 이유";
  news[13] = "호재터졌다! " + WhatNews[13] + " 주가 무섭게 오르는 이유";
  //
  Enews[0] = "Big news! " + WhatNews[0] + " rising price!";
  Enews[1] = WhatNews[1] + ", 6.5 Billion Paid-In Capital Increase";
  Enews[2] = WhatNews[2] + ", a large fire in a production plant";
  Enews[3] = WhatNews[3] + ", Risk of delisting in a difficult stock market";
  Enews[4] = WhatNews[4] + ", Carcinogens found in product";
  Enews[5] = WhatNews[5] + ", Reason Why Shares Are Rising?";
  Enews[6] = "Called foam block " + WhatNews[6] + ", finally...";
  Enews[7] = "the highest sales in the industry " + WhatNews[7] + ", entry into overseas markets";
  Enews[8] = WhatNews[8] + ", Alleged embezzlement of public funds by boss";
  Enews[9] = "Korea's most popular star Park Min-geun, " + WhatNews[9] + " full purchase";
  Enews[10] = "Mingeun's recommendation, " + WhatNews[10];
  Enews[11] = "Big news! " + WhatNews[11] + " rising price!";
  Enews[12] = "Big news! " + WhatNews[12] + " rising price!";
  Enews[13] = "Big news! " + WhatNews[13] + " rising price!";
}
