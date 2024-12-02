import processing.sound.*;
import interfascia.*;
SoundFile ButtonClick;
SoundFile diring;
SoundFile coin;
SoundFile casher;
SoundFile Serror;
SoundFile page;
SoundFile bgm;
SoundFile bulletBGM;
SoundFile hurt;
SoundFile correct;
SoundFile wrong;
SoundFile mathBGM;
SoundFile success;

float vol_music = -0.7;
float vol_UI = -1;
boolean music = true;

void settings() {
  fullScreen(P2D);
  PJOGL.setIcon("images/icon.png");
}

void setup() {
  px = width/2;
  py = height/2;
  //소리
  success = new SoundFile(this, "sounds/success.mp3");
  mathBGM = new SoundFile(this, "sounds/mathBGM.mp3");
  correct = new SoundFile(this, "sounds/correct.mp3");
  wrong = new SoundFile(this, "sounds/wrong.mp3");
  ButtonClick = new SoundFile(this, "sounds/딸깍.mp3");
  diring = new SoundFile(this, "sounds/띠링.mp3");
  coin = new SoundFile(this, "sounds/둥.mp3");
  casher = new SoundFile(this, "sounds/거래.mp3");
  Serror = new SoundFile(this, "sounds/error.mp3");
  page = new SoundFile(this, "sounds/page.mp3");
  hurt = new SoundFile(this, "sounds/hurt.mp3");
  bulletBGM = new SoundFile(this, "sounds/bulletBGM.mp3");
  ButtonClick.amp(vol_UI);
  diring.amp(vol_UI);
  casher.amp(vol_UI);
  coin.amp(vol_UI);
  Serror.amp(vol_UI);
  page.amp(vol_UI);
  works[0] = "드로잉 작업";
  works[1] = "서류작성";
  works[2] = "준비중";
  Eworks[0] = "Drawing Work";
  Eworks[1] = "Writing Docs";
  Eworks[2] = "Coming soon";
  //이미지
  bulletBackground = loadImage("images/bulletBackground.png");
  smile = loadImage("images/smile.png");
  fire = loadImage("images/fire.png");
  textCursor = loadImage("images/textCursor.png");
  hama = loadImage("images/hama.png");
  pig = loadImage("images/pig.png");
  orange = loadImage("images/orange.png");
  cursor = loadImage("images/cursor.png");
  work_done = loadImage("images/work_done.png");
  work = loadImage("images/work.png");
  ganpan = loadImage("images/ganpan.png");
  list = loadImage("images/list.png");
  pickaxe = loadImage("images/pickaxe.png");
  bank = loadImage("images/bank.png");
  bitcoin = loadImage("images/bitcoin.png");
  market = loadImage("images/market.png");
  trophy = loadImage("images/trophy.png");
  money = loadImage("images/money.png");
  resol = loadImage("images/resolution.png");
  black = loadImage("images/black.png");
  bill = loadImage("images/bill.png");
  icoin = loadImage("images/coin.png");
  korean = loadImage("images/korean.png");
  english = loadImage("images/english.png");
  vol_music_on = loadImage("images/vol_music_on.png");
  vol_music_off = loadImage("images/vol_music_off.png");
  hidden_noclick = loadImage("images/hidden_noclick.png");
  hidden_click = loadImage("images/hidden_click.png");
  empty_quest = loadImage("images/empty_quest.png");
  escQuest = loadImage("images/esc_quest.png");
  squest = loadImage("images/quest.png");
  empty_UI = loadImage("images/empty_UI.png");
  empty_UI2 = loadImage("images/empty_UI2.png");
  empty_UI3 = loadImage("images/empty_UI3.png");
  empty_UI4 = loadImage("images/empty_UI4.png");
  empty_UI5 = loadImage("images/empty_UI5.png");
  empty_UI6 = loadImage("images/empty_UI6.png");
  empty_UI7 = loadImage("images/empty_UI7.png");
  exit = loadImage("images/exit.png");
  snews = loadImage("images/news.png");
  wnowMarket = loadImage("images/nowMarket.png");
  setting = loadImage("images/setting.png");
  settingScreen = loadImage("images/settingScreen.png");
  setMoneyUI = loadImage("images/setMoneyUI.png");
  setMoneyUI2 = loadImage("images/setMoneyUI2.png");
  backg = loadImage("images/back.png");
  detail = loadImage("images/empty_UI.png");
  iblur = loadImage("images/blur.png");
  iblur.filter(BLUR, 10);
  backg.filter(BLUR, 1);
  uiFont = createFont("fonts/NeoDunggeunmoPro-Regular.ttf", 32);
  rectMode(CENTER);
  AllLoad();
  screenMode = "start";
  frameRate(144);
}

Preference save = new Preference();
PImage bulletBackground;
PImage hama;
PImage orange;
PImage cursor;
PImage work;
PImage work_done;
PImage ganpan;
PImage list;
PImage pickaxe;
PImage vol_music_on;
PImage vol_music_off;
PImage hidden_noclick;
PImage hidden_click;
PImage escQuest;
PImage squest;
PImage backg;
PImage empty_UI;
PImage empty_UI2;
PImage empty_UI3;
PImage empty_UI4;
PImage empty_UI5;
PImage empty_UI6;
PImage empty_UI7;
PImage exit;
PImage setMoneyUI;
PImage setMoneyUI2;
PImage detail;
PImage setting;
PImage settingScreen;
PImage iblur;
PImage wnowMarket;
PImage snews;
PImage empty_quest;
PImage korean;
PImage english;
PImage icoin;
PImage bill;
PImage black;
PImage resol;
PImage trophy;
PImage market;
PImage money;
PImage bitcoin;
PImage bank;
PImage pig;
PImage textCursor;
PImage smile;
PImage fire;
PImage icon;

int cursorMode = 1;

void draw() {
  println(showSetting);
  noCursor();
  if (bullet_playing == false) {
    if (textCursorMode == false) cursorMode = 1;
    else cursorMode = 2;
  } else {
    if (life > 0) {
      if (title == false) {
        cursorMode = 3;
      } else cursorMode = 1;
    } else cursorMode = 2;
  }
  if (bullet_playing == false) {
    imageMode(CORNER);
    image(backg, 0, 0, width, height);
  }
  Hope();
  for (int a=0; a<6; a++) {
    if (have[ran[a]] > 0) {
      float Getper=0;
      if (price[ran[a]] < ave[ran[a]]) {
        Getper = (ave[ran[a]] / price[ran[a]]*100)-100;
        Getper = round(Getper*100)/100.0;
        stockE[a] = -Getper;
      }
      if (price[ran[a]] > ave[ran[a]]) {
        Getper = (price[ran[a]] / ave[ran[a]]*100)-100;
        Getper = round(Getper*100)/100.0;
        stockE[a] = Getper;
      }
    }
  }
  if (screenMode != "start" && screenMode != "setStock1" && screenMode != "setMoney") {
    float totalStock=0;
    for (int i=0; i<20; i++) if (have[i] > 0) totalStock+= price[i]*have[i];
    float earn;
    if (totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama > startMoney) {
      earn = (((totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama)  / startMoney) * 100)-100;
      earn = round(earn*100)/100.0;
      totalE = earn;
    }
    if (totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama  < startMoney) {
      earn = ((startMoney / (totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama) ) * 100)-100;
      earn = round(earn*100)/100.0;
      totalE = -earn;
    }
    if (totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama == startMoney) {
      earn = 100-((totalStock+myMoney+depMoney_orange+depMoney_pig+depMoney_hama)  / startMoney) * 100;
      earn = round(earn*100)/100.0;
      totalE = 0;
    }
  }
  if (chQ[2] == false) {
    if (screenMode != "main") boyStack = 0;
  }
  if (screenMode == "start") mainTitle();
  if (screenMode == "help") help();
  if (screenMode == "main") main();
  if (screenMode == "setMoney") setMoney();
  if (screenMode == "wallet") wallet();
  if (screenMode == "koreaMarket") korea();
  if (screenMode == "forMaket") forMarket();
  if (screenMode == "setStock1") setStock1();
  if (screenMode.contains("hoga 0")) hoga(200, height/2, 0);
  if (screenMode.contains("hoga 1")) hoga(200, height/2, 1);
  if (screenMode.contains("hoga 2")) hoga(200, height/2, 2);
  if (screenMode.contains("hoga 3")) hoga(200, height/2, 3);
  if (screenMode.contains("hoga 4")) hoga(200, height/2, 4);
  if (screenMode.contains("hoga 5")) hoga(200, height/2, 5);
  if (screenMode.contains("whoga 0")) hoga(200, height/2, 0);
  if (screenMode.contains("whoga 1")) hoga(200, height/2, 1);
  if (screenMode.contains("whoga 2")) hoga(200, height/2, 2);
  if (screenMode.contains("whoga 3")) hoga(200, height/2, 3);
  if (screenMode.contains("whoga 4")) hoga(200, height/2, 4);
  if (screenMode.contains("whoga 5")) hoga(200, height/2, 5);
  if (screenMode == "detail 0") detailGraph(0);
  if (screenMode == "detail 1") detailGraph(1);
  if (screenMode == "detail 2") detailGraph(2);
  if (screenMode == "detail 3") detailGraph(3);
  if (screenMode == "detail 4") detailGraph(4);
  if (screenMode == "detail 5") detailGraph(5);
  if (screenMode == "quest1") quest1();
  if (screenMode == "quest2") quest2();
  if (screenMode == "hiddenQuest") hiddenQuest();
  if (screenMode == "workList") workList();
  if (screenMode == "bank") sbank();
  if (screenMode == "orangeBank") OrangeBank();
  if (screenMode == "hamaBank") HamaBank();
  if (screenMode == "pigBank") PigBank();
  if (screenMode == "bullet") bulletPlaying();
  if (screenMode == "math") mathPlaying();
  if (screenMode != "start" && screenMode != "help" && screenMode != "setMoney" && screenMode != "setStock1" && screenMode != "setStock1" && screenMode != "setStock2") {
    if (ms == -1) {
      ms = millis();
    } else if (millis() >= ms+1000/speed) {
      ms = millis();
      min++;
      if (min >= 60) {
        min = 0;
        hour++;
        depHour++;
        if (depHour == 10) {
          depHour = 1;
          if (depMoney_orange > 0) depMoney_orange+= interest_orange*0.01*depMoney_orange;
          if (depMoney_pig > 0) depMoney_pig+= interest_pig*0.01*depMoney_pig;
          if (depMoney_hama > 0) depMoney_hama+= interest_pig*0.01*depMoney_hama;
        }
        setBank();
        if (chQ[2] == false) {
          if (screenMode == "main" && (have[ran[0]] > 0 || have[ran[1]] > 0 || have[ran[2]] > 0 || have[ran[3]] > 0 || have[ran[4]] > 0 || have[ran[5]] > 0)) {
            boyStack++;
            if (boyStack >= 10) delayCh(2);
          }
        }
        walletint = 0;
        for (int a=0; a<20; a++) {
          exint[a] = 0;
        }
        if (hour >= 24) {
          hour = 0;
          day++;
          resetPercent();
        }
      }
    }
  }
  if (hour > 2 && hour < 23) nowMarket = "국내";
  else nowMarket = "휴장";
  if (nowMarket == "휴장") {
    if (screenMode.contains("Market") || screenMode.contains("Buy") || screenMode.contains("Sell") || screenMode.contains("hoga") || screenMode.contains(".detail")) screenMode = "main";
  }
  checkQ();
  if (title == true) {
    tint(150, 150, 150, 150);
    image(iblur, width/2, height/2, width, height);
    noTint();
    title();
  }
  if (math_playing == false) {
    if (bullet_playing == false) {
      if (music == true) vol_music = (show_vol_music*0.01);
      else vol_music = 0;
      bgm.amp(vol_music);
      bulletBGM.stop();
      mathBGM.stop();
      if (bgm.isPlaying() == false) bgm.play();
    } else {
      mathBGM.stop();
      bgm.stop();
      if (music == true) vol_music = (show_vol_music*0.01);
      else vol_music = 0;
      bulletBGM.amp(vol_music);
      if (life > 0) {
        if (bulletBGM.isPlaying() == false) bulletBGM.play();
      } else bulletBGM.stop();
    }
  } else {
    bulletBGM.stop();
    bgm.stop();
    if (music == true) vol_music = (show_vol_music*0.01);
    else vol_music = 0;
    mathBGM.amp(vol_music);
    if (math_timeout == false) {
      if (mathBGM.isPlaying() == false) mathBGM.play();
    } else mathBGM.stop();
  }
  if (showSetting == true) setting();
  textSize(0.8*uiSize);
  fill(255);
  text("fps : " + int(frameRate), 60, 30);
  if (bullet_playing == false) {
    fill(0, 80-show_bright);
    rectMode(CENTER);
    rect(width/2, height/2, width, height);
    if (screenMode != "orangeBank" && screenMode != "hamaBank" && screenMode != "pigBank" && screenMode != "setMoney") {
      textCursorMode = false;
    }
  }
  if (textCursorMode == true) cursorMode = 2;
  else if (bullet_playing == false) cursorMode = 1;
  else if (life > 0) cursorMode = 3;
  else cursorMode = 1;
  if (cursorMode == 1) image(cursor, mouseX, mouseY+15, 30, 30);
  if (cursorMode == 2) image(textCursor, mouseX, mouseY, 50, 70);
  if (cursorMode == 3) noCursor();
  if (showError == true) floatError();
}

int depHour = 1;

int intPassword = 0;
String password[] = new String[8];
boolean debug = false;

void keyPressed() {
  if (key == 's' || key == 'S') {
    windowResize(1600, 900);
    windowMove(200, 70);
  }
  if (screenMode == "main") {
    if (intPassword > 6) intPassword = 0;
    if (key == 'm' || key == 'M') {
      intPassword++;
      password[intPassword] = "m";
    }
    if (key == 'i' || key == 'I') {
      intPassword++;
      password[intPassword] = "i";
    }
    if (key == 'n' || key == 'N') {
      intPassword++;
      password[intPassword] = "n";
    }
    if (key == 'g' || key == 'G') {
      intPassword++;
      password[intPassword] = "g";
    }
    if (key == 'e' || key == 'E') {
      intPassword++;
      password[intPassword] = "e";
    }
    if (key == 'u' || key == 'U') {
      intPassword++;
      password[intPassword] = "u";
    }
    if (keyCode == ENTER) {
      if (password[1] == "m" && password[2] == "i" && password[3] == "n" && password[4] == "g" && password[5] == "e" && password[6] == "u" && password[7] == "n") {
        debug = true;
        success.play();
      }
    }
  }
  if (key == ' ' && debug == true) {
    min+=5;
    for (int d=0; d<5; d++) {
      for (int a=0; a<6; a++) {
        for (int i=0; i<20; i++) {
          if (nowMarket == "국내") {
            hope_sell_price[a][i] = price[ran[a]] + price[ran[a]] * (i+1) * ( traffic[ran[a]] * 0.01 * 0.01 );
            hope_buy_price[a][i] = price[ran[a]] - price[ran[a]] * (i+1) * ( traffic[ran[a]] * 0.01 * 0.01 );
          }
        }
        //상승
        if (nowMarket == "국내") {
          for (int i=0; i<20; i++) {
            if (hope_sell[a][i] < 0) hope_sell[a][i] = int(random(10, 20));
            if (hope_buy[a][i] < 0) hope_buy[a][i] = int(random(10, 20));
            if (hope_sell[a][i] > 30 && hope_buy[a][i] > 30) {
              hope_sell[a][i]-=int(random(30, 48));
              hope_buy[a][i]-=int(random(30, 48));
            }
            if (hope_sell[a][i] < 30 && hope_buy[a][i] > 50) {
              hope_buy[a][i]-=int(random(35, 48));
            }
            if (hope_sell[a][i] > 50 && hope_buy[a][i] < 30) {
              hope_sell[a][i]-=int(random(35, 48));
            }
          }
          if (change[a] == 1) {
            //매도호가
            for (int i=0; i<5; i++) {
              if (hope_sell[a][i]-4 > 0) hope_sell[a][i]-=ran(-2, 5);
              else {
                if (i == 0) hope_sell[a][i] = 0;
                else hope_sell[a][i] = int(random(5, 10));
              }
            }
            for (int i=5; i<20; i++) {
              hope_sell[a][i]-=ran(0, 1);
              if (hope_sell[a][i] < 1) hope_sell[a][i] = int(random(5, 10));
            }
            //매수호가
            for (int i=0; i<5; i++) {
              hope_buy[a][i]+=ran(2, 5);
            }
            for (int i=5; i<20; i++) {
              hope_buy[a][i]+=ran(0, 2);
            }
          }
          //하락
          if (change[a] == -1) {
            //매도호가
            for (int i=0; i<5; i++) {
              hope_sell[a][i]+=ran(2, 5);
            }
            for (int i=5; i<20; i++) {
              hope_sell[a][i]+=ran(0, 2);
            }
            //매수호가
            for (int i=0; i<5; i++) {
              if (hope_buy[a][i]-4 > 0) hope_buy[a][i]-=ran(-2, 5);
              else {
                if (i==0) hope_buy[a][i]= 0;
                else hope_sell[a][i]= int(random(5, 10));
              }
            }
            for (int i=5; i<20; i++) {
              hope_buy[a][i]-=ran(0, 1);
              if (hope_sell[a][i] < 1) hope_sell[a][i] = int(random(5, 10));
            }
          }
          if (hope_sell[a][0] <= 0) {
            price[ran[a]] = hope_sell_price[a][0];
            for (int s=0; s<10; s++) {
              hope_sell_price[a][s] = hope_sell_price[a][s+1];
            }
          }
          if (hope_buy[a][0] <= 0) {
            if (have[ran[a]] > 0) {
              if (cQ[9] == false) {
                if (noRisk[ran[a]] == true) noRisk[ran[a]] = false;
              }
            }
            price[ran[a]] = hope_buy_price[a][0];
            for (int s=0; s<10; s++) {
              hope_buy_price[a][s] = hope_buy_price[a][s+1];
            }
          }
          if (graphPrice[ran[a]][0] != -1) {
            for (int g=1919; g>0; g--) {
              graphPrice[ran[a]][g] = graphPrice[ran[a]][g-1];
            }
          }
          graphPrice[ran[a]][0] = price[ran[a]];
        }
      }
    }
  }
  if (key == ESC) {
    key = 0;
    if (screenMode == "detail 0") screenMode = "hoga 0";
    else if (screenMode == "detail 1") screenMode = "hoga 1";
    else if (screenMode == "detail 2") screenMode = "hoga 2";
    else if (screenMode == "detail 3") screenMode = "hoga 3";
    else if (screenMode == "detail 4") screenMode = "hoga 4";
    else if (screenMode == "detail 5") screenMode = "hoga 5";
    else {
      if (title == false) {
        if (showSetting == true) showSetting = false;
        title = true;
      } else if (title == true) title = false;
    }
  }
  if (keyCode == ALT) AllSave();
}

boolean title = false;
