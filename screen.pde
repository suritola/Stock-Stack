void mainTitle() {
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(255);
  if (language == "korean") {
    textSize(3*uiSize);
    text("Stock Stack", width/2, 200);
    textSize(1*uiSize);
    text("By. 22400258 박민근", width/2, 300);
    textSize(0.8*uiSize);
    fill(255, 255, 0);
    text("Beta 3.0", width/2, 330);
  }
  if (language == "english") {
    textSize(3*uiSize);
    text("Stock Stack", width/2, 200);
    textSize(1*uiSize);
    text("By. 22400258 ParkMinGeun", width/2, 300);
    textSize(0.8*uiSize);
    fill(255, 255, 0);
    text("Beta 3.0", width/2, 330);
  }
  b_start(width/2-450, height/2);
  b_ear(width/2+450,height/2);
  if (language == "korean") {
    textSize(1*uiSize);
    if (lastSavedHour != -1) text("마지막 저장 : " + lastSavedHour + ":" + lastSavedSec + " " + lastSavedDay + "/" + lastSavedMonth,width/2+450,height/2+100);
    else text("마지막 저장 : 없음",width/2+450,height/2+100);
  }
  if (language == "english") {
    textSize(1*uiSize);
    if (lastSavedHour != -1) text("Last Saved : " + lastSavedHour + ":" + lastSavedSec + " " + lastSavedDay + "/" + lastSavedMonth,width/2+450,height/2+100);
    else text("Last Saved : Not Found",width/2+450,height/2+100);
  }
  b_help(200, 200);
}


String resolution = "1920x1080 (FULL)";
void setting() {
  imageMode(CENTER);
  image(settingScreen, width/2, height/2, 800, 1000);
  float right = width/2+400;
  float left = width/2-400;
  float up = height/2-500;
  float down = height/2+500;
  b_back(right-150, down-115);
  b_reset(left+180, down-125);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(2.8*uiSize);
    text("음악", left+170, up+150);
  }
  if (language == "english") {
    textSize(2.6*uiSize);
    text("Music", left+170, up+150);
  }
  vol_music(left+320, up+150);
  vol_slider(left+380, up+125);
  textSize(1.2*uiSize);
  fill(0);
  text(show_vol_music, right-130, up+150);
  //언어
  noFill();
  stroke(0);
  rectMode(CENTER);
  strokeWeight(5);
  rect(left+460, up+300, 280, 120);
  if (mousePressed) {
    if (mouseX <= left+460+140 && mouseX >= left+460-140 && mouseY <= up+300+60 && mouseY >= up+300-60) {
      clickedWhat = "language";
    }
  }
  fill(0);
  if (language == "korean") {
    textSize(2.8*uiSize);
    text("언어", left+170, up+300);
    image(korean, left+380, up+300, 100, 70);
    textSize(1.5*uiSize);
    text("한국어", left+525, up+300);
  }
  if (language == "english") {
    textSize(1.8*uiSize);
    text("Language", left+180, up+300);
    image(english, left+380, up+300, 100, 70);
    textSize(1.3*uiSize);
    text("English", left+525, up+300);
  }
  //밝기
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(2.8*uiSize);
    text("음악", left+170, up+150);
  }
  if (language == "english") {
    textSize(2.6*uiSize);
    text("Music", left+170, up+150);
  }
  bright_slider(left+380, up+425);
  textSize(1.2*uiSize);
  fill(0);
  text(show_bright, right-130, up+450);
  fill(0);
  if (language == "korean") {
    textSize(2.8*uiSize);
    text("밝기", left+170, up+450);
  }
  if (language == "english") {
    textSize(2.45*uiSize);
    text("Bright", left+170, up+450);
  }
  fill(0);
  if (language == "korean") {
    textSize(2.2*uiSize);
    text("해상도", left+170, up+600);
    textSize(0.8*uiSize);
    text("(고정)", left+300, up+615);
  }
  if (language == "english") {
    textSize(1.5*uiSize);
    text("resolution", left+170, up+600);
    textSize(0.4*uiSize);
    text("(unchangable)", left+300, up+615);
  }
  imageMode(CENTER);
  image(resol, right-300, up+600, 280, 100);
  fill(0);
  textSize(1.0*uiSize);
  text(resolution, right-300, up+600);
}


void title() {
  showTitle(width/2, height/2);
  float right = width/2+400;
  float left = width/2-400;
  float up = height/2-300;
  float down = height/2+300;
  b_reset(left+150, up+70);
  b_setting(right-100, up+90);
  b_exit(left+120, down-70);
  if (bullet_playing == true) b_ex(width/2, height/2);
  if (screenMode != "start" && screenMode != "help" && screenMode != "setStock1" && screenMode != "setMoney") esc_quest(right-100, up+250);
}

void showTitle(float x, float y) {
  rectMode(CENTER);
  stroke(#FFFFFF);
  strokeWeight(3);
  fill(#5A6464);
  rect(x, y, 800, 600);
  stroke(0);
}

void quest1() {
  for (int i=1; i<11; i++) {
    showQ(30, 100*i, 1100, i);
  }
  b_back(width-150, height-100);
  b_qstart2(width-200, height/2);
  b_hidden_quest(width-500, height-100);
}

void quest2() {
  for (int i=11; i<21; i++) {
    showQ(30, 100*(i-10), 1100, i);
  }
  b_back(width-150, height-100);
  b_hidden_quest(width-500, height-100);
}

void hiddenQuest() {
  for (int i=1; i<11; i++) {
    showHQ(30, 100*i, 1100, i);
  }
  b_back(width-150, height-100);
}

void showHQ(float x, float y, float l, int i) {
  strokeWeight(3);
  stroke(0);
  imageMode(CORNER);
  if (chQ[i] == false) image(setMoneyUI2, x, y-50, l, 70);
  if (chQ[i] == true) image(setMoneyUI, x, y-50, l, 70);
  textFont(uiFont);
  textAlign(CORNER, CORNER);
  fill(255);
  textSize(1.2*uiSize);
  if (language == "korean") {
    if (chQ[i] == true) text(hiddenQuest[i], x+60, y-5);
    if (chQ[i] == false) text("?????????", x+60, y-5);
  }
  if (language == "english") {
    if (chQ[i] == true) text(EhiddenQuest[i], x+60, y-5);
    if (chQ[i] == false) text("?????????", x+60, y-5);
  }
}

void showQ(float x, float y, float l, int i) {
  strokeWeight(3);
  stroke(0);
  imageMode(CORNER);
  if (cQ[i] == false) image(setMoneyUI2, x, y-50, l, 70);
  if (cQ[i] == true) image(setMoneyUI, x, y-50, l, 70);
  textFont(uiFont);
  textAlign(CORNER, CORNER);
  fill(255);
  textSize(1.1*uiSize);
  if (language == "korean") {
    if (i != 8) text(quest[i], x+60, y-4.5);
    if (i == 8) text(quest[i] + " " + quest8_complete + " / 3", x+50, y-3.5);
  }
  if (language == "english") {
    if (i != 8) text(Equest[i], x+60, y-4.5);
    if (i == 8) text(Equest[i] + " " + quest8_complete + " / 3", x+50, y-3.5);
  }
}

void korea() {
  float xu = width/3;
  for (int i=1; i<4; i++) {
    strokeWeight(5);
    stroke(0);
    line(xu*i, 0, xu*i, height);
  }
  strokeWeight(5);
  stroke(0);
  line(0, height/2, width, height/2);
  for (int i=1; i<4; i++) {
    imageMode(CENTER);
    showName(ran[i-1], (xu*i)-330, 100);
    //
    showPrice(ran[i-1], (xu*i)-550, 200);
    //
    showChange(ran[i-1], (xu*i)-550, 270);
    //
    if (have[ran[i-1]] > 0) {
      imageMode(CENTER);
      image(empty_UI6, (xu*i)-550, 340, 120, 50);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(0.7*uiSize);
        text("평균단가", (xu*i)-550, 335);
        textSize(1.2*uiSize);
        String av = String.format("%,d", int(ave[ran[i-1]]));
        fill(255);
        text(av + "원", (xu*i)-380, 340);
      }
      if (language == "english") {
        textSize(0.5*uiSize);
        text("Average Price", (xu*i)-550, 335);
        textSize(1.2*uiSize);
        String av = String.format("%,d", int(ave[ran[i-1]]));
        fill(255);
        text(av + "won", (xu*i)-380, 340);
      }
    }
    //
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.2*uiSize);
      text("보유수량 : " + have[ran[i-1]] + "주", (xu*i)-150, 270);
    }
    if (language == "english") {
      textSize(1.2*uiSize);
      text("You have : " + have[ran[i-1]] + "s", (xu*i)-150, 270);
    }
    //
    if (have[ran[i-1]] > 0) {
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      textSize(1.2*uiSize);
      float Getper=0;
      if (price[ran[i-1]] < ave[ran[i-1]]) {
        Getper = (ave[ran[i-1]] / price[ran[i-1]]*100)-100;
        Getper = round(Getper*100)/100.0;
        fill(0, 0, 255);
        if (language == "korean") text("수익률 : " + "-" + Getper + "%", (xu*i)-150, 340);
        if (language == "english") text("Earn : " + "-" + Getper + "%", (xu*i)-150, 340);
      }
      if (price[ran[i-1]] > ave[ran[i-1]]) {
        Getper = (price[ran[i-1]] / ave[ran[i-1]]*100)-100;
        Getper = round(Getper*100)/100.0;
        fill(255, 0, 0);
        if (language == "korean") text("수익률 : " + "+" + Getper + "%", (xu*i)-150, 340);
        if (language == "english") text("Earn : " + "+" + Getper + "%", (xu*i)-150, 340);
      }
    }
    float a=int(save_price[ran[i-1]]);
    float b=int(price[ran[i-1]]);
    float per = 0;
    if (a > b) {
      fill(0, 0, 255);
      per = 100-((b/a)*100);
      per = round(per*100)/100.0;
      dailyS[ran[i-1]] = -1*per;
      text("-" + per + "%", (xu*i)-150, 200);
    }
    if (a < b) {
      fill(255, 0, 0);
      per = 100-((a/b)*100);
      per = round(per*100)/100.0;
      dailyS[ran[i-1]] = per;
      text("+" + per  + "%", (xu*i)-150, 200);
    }
    if (a == b) {
      fill(255);
      fill(255, 0, 0);
      text("0%", (xu*i)-150, 200);
    }
    b_detail((xu*i)-350, 420, i-1);
  }
  for (int i=1; i<4; i++) {
    imageMode(CENTER);
    showName(ran[i+2], (xu*i)-330, 630);
    //
    showPrice(ran[i+2], (xu*i)-550, 720);
    //
    showChange(ran[i+2], (xu*i)-550, 800);
    //
    if (have[ran[i+2]] > 0) {
      //
      imageMode(CENTER);
      image(empty_UI6, (xu*i)-550, 890, 120, 50);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(0.7*uiSize);
        text("평균단가", (xu*i)-550, 885);
        textSize(1.2*uiSize);
        String av = String.format("%,d", int(ave[ran[i+2]]));
        fill(255);
        text(av + "원", (xu*i)-400, 890);
      }
      if (language == "english") {
        textSize(0.7*uiSize);
        text("Average Price", (xu*i)-550, 885);
        textSize(1.2*uiSize);
        String av = String.format("%,d", int(ave[ran[i+2]]));
        fill(255);
        text(av + "won", (xu*i)-370, 890);
      }
    }
    //
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.2*uiSize);
      text("보유수량 : " + have[ran[i+2]] + "주", (xu*i)-150, 800);
    }
    if (language == "english") {
      textSize(1.0*uiSize);
      text("You have : " + have[ran[i+2]] + "s", (xu*i)-150, 800);
    }
    //
    if (have[ran[i+2]] > 0) {
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      textSize(1.2*uiSize);
      float Getper=0;
      if (price[ran[i+2]] < ave[ran[i+2]]) {
        Getper = (ave[ran[i+2]] / price[ran[i+2]]*100)-100;
        Getper = round(Getper*100)/100.0;
        fill(0, 0, 255);
        if (language == "korean") text("수익률 : " + "-" + Getper + "%", (xu*i)-150, 880);
        if (language == "english") text("Earn : " + "-" + Getper + "%", (xu*i)-150, 880);
      }
      if (price[ran[i+2]] > ave[ran[i+2]]) {
        Getper = (price[ran[i+2]] / ave[ran[i+2]]*100)-100;
        Getper = round(Getper*100)/100.0;
        fill(255, 0, 0);
        if (language == "korean") text("수익률 : " + "+" + Getper + "%", (xu*i)-150, 880);
        if (language == "english") text("Earn : " + "+" + Getper + "%", (xu*i)-150, 880);
      }
    }
    float a=int(save_price[ran[i+2]]);
    float b=int(price[ran[i+2]]);
    float per=0;
    if (a > b) {
      fill(0, 0, 255);
      per = 100-((b/a)*100);
      per = round(per*100)/100.0;
      dailyS[ran[i+2]] = -1*per;
      text("-" + per + "%", (xu*i)-150, 720);
    } else if (a < b) {
      fill(255, 0, 0);
      per = 100-((a/b)*100);
      per = round(per*100)/100.0;
      dailyS[ran[i+2]] = per;
      text("+" + per + "%", (xu*i)-150, 720);
    } else if (a == b) {
      fill(255);
      fill(255, 0, 0);
      text("0%", (xu*i)-150, 720);
    }
    b_detail((xu*i)-350, 970, i+2);
  }
  b_back(width/2, height/2);
}

void priceT(float x, float y, int h) {
  for (int u=0; u<10; u++) {
    rectMode(CENTER);
    stroke(0, 0, 255);
    strokeWeight(3);
    noFill();
    rect(x, y-50-u*50, 150, 50);
    textAlign(CENTER, CENTER);
    textFont(uiFont);
    textSize(0.8*uiSize);
    fill(255);
    String fn = String.format("%,d", int(hope_sell_price[h][u]));
    text(fn + " " + hope_sell[h][u], x, y-50-u*50);
    noFill();
    stroke(255, 0, 0);
    rect(x, y+u*50, 150, 50);
    fill(255);
    String fn2 = String.format("%,d", int(hope_buy_price[h][u]));
    text(fn2 + " " + hope_buy[h][u], x, y+u*50);
    stroke(0);
    noFill();
    rect(x+150, y-25, 150, 45);
    fill(255);
    String fn3 = String.format("%,d", int(price[ran[h]]));
    text(fn3, x+150, y-25);
  }
  if (language == "korean") {
    textSize(0.8*uiSize);
    text("1주당 가격", x+150, y-80);
  }
  if (language == "english") {
    textSize(0.6*uiSize);
    text("Price per 1s", x+150, y-80);
  }
  if (have[ran[h]] > 0) {
    imageMode(CENTER);
    image(empty_UI3, x+390, y-150, 300, 70);
    fill(0);
    if (language == "korean") {
      textSize(1.3*uiSize);
      text("보유 " + have[ran[h]], x+390, y-150);
    }
    if (language == "english") {
      textSize(1.1*uiSize);
      text("you have " + have[ran[h]], x+390, y-150);
    }
    imageMode(CENTER);
    image(empty_UI3, x+390, y-70, 300, 70);
    textSize(1.3*uiSize);
    if (stockE[h] > 0) {
      fill(255, 0, 0);
      text("+" + stockE[h] + "%", x+390, y-70);
    } else if (stockE[h] < 0) {
      fill(0, 0, 255);
      text(stockE[h] + "%", x+390, y-70);
    } else {
      fill(0);
      text(stockE[h] + "%", x+390, y-70);
    }
    imageMode(CENTER);
    image(empty_UI3, x+390, y+10, 300, 70);
    fill(0);
    String fn4 = String.format("%,d", int(ave[ran[h]]));
    if (language == "korean") {
      textSize(1.0*uiSize);
      text("평균단가 " + fn4 + "원", x+390, y+10);
    }
    if (language == "english") {
      textSize(0.8*uiSize);
      text("Average Price " + fn4 + "won", x+390, y+10);
    }
  }
}

void hoga(float x, float y, int h) {
  priceT(x-100, y, h);
  b_back(width-150, height-100);
  drawGraph(width/2-500, height/2-350, 100, ran[h]);
  b_buy(width-800, height-400, ran[h]);
  b_buy_max(width-800, height-480, ran[h]);
  b_sell(width-400, height-400, ran[h]);
  b_sell_max(width-400, height-480, ran[h]);
  myMoney(width/2-500, height-400);
  wantPrice(width-570, 300, ran[h]);
  b_add1(width-930, 450);
  b_add10(width-800, 450);
  b_sub1(width-330, 450);
  b_sub10(width-200, 450);
  wantPrice = int(price[ran[h]]*wantAmount);
  imageMode(CENTER);
  image(icoin, width-570, 150, 16*uiSize, 4.5*uiSize);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(1.5*uiSize);
  if (language == "korean") text(name[ran[h]], width-570, 150);
  if (language == "english") text(Ename[ran[h]], width-570, 150);
  if (language == "korean") text(wantAmount + "주", width-550, 450);
  if (language == "english") text(wantAmount + "s", width-550, 450);
}

void forMarket() {
  b_back(width-150, height-100);
}

void wallet() {
  b_back(width-150, height-100);
  myStock(width/2, 100);
  haveStock(370, 400, ran[0]);
  haveStock(970, 400, ran[1]);
  haveStock(1570, 400, ran[2]);
  haveStock(370, 750, ran[3]);
  haveStock(970, 750, ran[4]);
  haveStock(1570, 750, ran[5]);
}

int help_index = 20;
String helpT[] = new String[help_index];
String ehelpT[] = new String[help_index];

void help() {
  helpT[0] = "시작하기를 누르면 초기자금을 설정합니다.";
  helpT[1] = "다음으로 가면 상장된 6개의 주식의 속성을";
  helpT[2] = "설정합니다";
  helpT[3] = "설정을 마친 후, 시작하기를 누르면";
  helpT[4] = "시간이 흐르며 시뮬레이터가 시작됩니다.";
  helpT[5] = "";
  helpT[6] = "증시에 들어가서 호가창을 보면,";
  helpT[7] = "왼쪽에 매수/매도 호가수량이 보입니다.";
  helpT[8] = "그 중 현재 주가와 가장 가까운 호가의 수량이";
  helpT[9] = "0이 되면 해당 주가가 변합니다";
  helpT[10] = "";
  helpT[11] = "'잔고' 창에서는 보유중인 주식들을 확인할 수 있습니다.";
  helpT[12] = "";
  helpT[13] = "'근무'를 통해 돈을 추가적으로 벌 수 있으며";
  helpT[14] = "근로 임금은 상장된 주식들의 주가평균가로 책정됩니다.";
  helpT[15] = "게임을 처음부터 하시려면";
  helpT[16] = "타이틀 화면의 '새 게임'을 누르세요";
  helpT[17] = "";
  helpT[18] = "제작 : 박민근";
  helpT[19] = "디스코드 #its_mingeun";
  //
  ehelpT[0] = "Press 'start' to set start money";
  ehelpT[1] = "and you will set 6 stocks";
  ehelpT[2] = "which are listed";
  ehelpT[3] = "and Press 'start' again to play game";
  ehelpT[4] = "with time passing";
  ehelpT[5] = "";
  ehelpT[6] = "When you go market and press 'goto',";
  ehelpT[7] = "you will see Order Book on left";
  ehelpT[8] = "when amount of the closest price to now's Price";
  ehelpT[9] = "becomes 0, the price of stock will be change";
  ehelpT[10] = "";
  ehelpT[11] = "you can see your stocks and money at 'wallet'";
  ehelpT[12] = "";
  ehelpT[13] = "you can earn some money by working";
  ehelpT[14] = "working fee is estimated from average of price of listed stocks";
  ehelpT[15] = "you can restart game with 'New Game' button on Title";
  ehelpT[16] = "";
  ehelpT[17] = "";
  ehelpT[18] = "made by : 박민근";
  ehelpT[19] = "Discord #its_mingeun";
  float w=800;
  float h=900;
  float x=width/2-w*0.5;
  float y=height/2-h*0.5;
  strokeWeight(3);
  stroke(0);
  fill(50, 50, 50, 90);
  rect(width/2, height/2+50, w, h, 50);
  textFont(uiFont);
  textAlign(CORNER, CORNER);
  fill(255);
  if (language == "korean") {
    textSize(2.8*uiSize);
    text("도움말", x+30, y+20);
    textSize(0.9*uiSize);
    for (int i=0; i<help_index; i++) {
      text(helpT[i], x+30, (y+110)+40*i);
    }
  }
  if (language == "english") {
    textSize(2.8*uiSize);
    text("HELP", x+30, y+20);
    textSize(0.9*uiSize);
    for (int i=0; i<help_index; i++) {
      text(ehelpT[i], x+30, (y+110)+40*i);
    }
  }
  b_back(width-150, height-100);
}

void main() {
  show_time(width/2-50, 100);
  b_wallet(300, 150);
  b_korea(300, height-300);
  recent_news(width-350, 100);
  show_jang(300, height-410);
  quest(300, 450);
  speed(width/2-50, height/2-300);
  b_setting(width-100, height-100);
  b_bank(width/2-50, height-300);
  b_work(width/2-50, 450);
}

void showTotal(int i, float x, float y) {
  image(empty_UI6, x, y, 120, 50);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(0.7*uiSize);
    text("시가총액", x, y-5);
    String fnT = String.format("%,d", int(total[i]));
    fill(255);
    textSize(1.2*uiSize);
    text(fnT + "원", x+200, y);
  }
  if (language == "english") {
    textSize(0.4*uiSize);
    text("Market", x, y-15);
    text("Capitalization", x, y);
    String fnT = String.format("%,d", int(total[i]));
    fill(255);
    textSize(1.2*uiSize);
    text(fnT + "won", x+200, y);
  }
}

void showChange(int i, float x, float y) {
  image(empty_UI6, x, y, 120, 50);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(0.55*uiSize);
    text("평균 변동률", x, y-5);
    textSize(1.3*uiSize);
    fill(255);
    text(traffic[i] + "%", x+120, y);
  }
  if (language == "english") {
    textSize(0.6*uiSize);
    text("fluctuation", x, y-5);
    textSize(1.3*uiSize);
    fill(255);
    text(traffic[i] + "%", x+120, y);
  }
}

void showPrice(int i, float x, float y) {
  image(empty_UI6, x, y, 120, 50);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(1.2*uiSize);
    text("가격", x, y-5);
    textSize(0.7*uiSize);
    String fn = String.format("%,d", int(price[i]));
    fill(255);
    textSize(1.2*uiSize);
    text(fn + "원", x+170, y);
  }
  if (language == "english") {
    textSize(1.0*uiSize);
    text("Price", x, y-5);
    textSize(0.7*uiSize);
    String fn = String.format("%,d", int(price[i]));
    fill(255);
    textSize(1.2*uiSize);
    text(fn + "won", x+170, y);
  }
}

void showName(int i, float x, float y) {
  image(empty_UI5, x, y, 300, 80);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (i != 7) textSize(1.2*uiSize);
  else textSize(0.9*uiSize);
  if (language == "korean") text(name[i], x, y-10);
  if (language == "english") text(Ename[i], x, y-10);
}

void setStock1() {
  float xu = width/3;
  for (int i=1; i<4; i++) {
    line(xu*i, 0, xu*i, height);
  }
  line(0, height/2, width, height/2);
  b_start3(width/2, height/2-30);
  b_back(width-150, height-100);
  for (int i=1; i<4; i++) {
    //이름
    imageMode(CENTER);
    showName(ran[i-1], (xu*i)-330, 100);
    //주가
    showPrice(ran[i-1], (xu*i)-550, 200);
    b_priceUp10000((xu*i)-205, 175, ran[i-1]);
    b_priceUp100000((xu*i)-70, 175, ran[i-1]);
    b_priceDown10000((xu*i)-205, 225, ran[i-1]);
    b_priceDown100000((xu*i)-70, 225, ran[i-1]);
    //변동률
    showChange(ran[i-1], (xu*i)-550, 300);
    b_changeUp1((xu*i)-320, 300, ran[i-1]);
    b_changeDown1((xu*i)-250, 300, ran[i-1]);
    b_changeUp10((xu*i)-170, 300, ran[i-1]);
    b_changeDown10((xu*i)-100, 300, ran[i-1]);
    //시가총액
    showTotal(ran[i-1], (xu*i)-550, 400);
  }
  for (int i=1; i<4; i++) {
    //이름
    imageMode(CENTER);
    showName(ran[i+2], (xu*i)-330, 650);
    //주가
    showPrice(ran[i+2], (xu*i)-550, 750);
    b_priceUp10000((xu*i)-205, 725, ran[i+2]);
    b_priceUp100000((xu*i)-70, 725, ran[i+2]);
    b_priceDown10000((xu*i)-205, 775, ran[i+2]);
    b_priceDown100000((xu*i)-70, 775, ran[i+2]);
    //변동률
    showChange(ran[i+2], (xu*i)-550, 850);
    b_changeUp1((xu*i)-320, 850, ran[i+2]);
    b_changeDown1((xu*i)-250, 850, ran[i+2]);
    b_changeUp10((xu*i)-170, 850, ran[i+2]);
    b_changeDown10((xu*i)-100, 850, ran[i+2]);
    //시가총액
    showTotal(ran[i+2], (xu*i)-550, 950);
  }
}

void setMoney() {
  b_start2(width/2, height/2+250);
  b_back(width-150, height-100);
  rectMode(CENTER);
  noFill();
  strokeWeight(5);
  stroke(255);
  rect(width/2, height/2-30, 600, 150, 50);
  if (texting == true) {
    if (textLine == 1) {
      line(width/2+160, height/2-30+40, width/2+160, height/2-30-40);
      textLine = 0;
    } else textLine = 1;
  }
  if (mouseX <= width/2+300 && mouseX >= width/2-300 && mouseY <= height/2-30+75 && mouseY >= height/2-30-75) {
    cursorMode = 2;
    textCursorMode = true;
  } else textCursorMode = false;
  if (mousePressed) {
    if (mouseX <= width/2+300 && mouseX >= width/2-300 && mouseY <= height/2-30+75 && mouseY >= height/2-30-75) {
      texting = true;
    } else {
      texting = false;
      textCursorMode = false;
    }
  }
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(2.5*uiSize);
  if (language == "korean") text("원", width/2+200, height/2-30);
  if (language == "english") text("won", width/2+200, height/2);
  if (language == "korean") {
    textSize(4*uiSize);
    text("초기자금 설정", width/2, height/2-300);
    if (textOutput < 100000000) textSize(2.5*uiSize);
    else textSize(2.2*uiSize);
    String fn = String.format("%,d", int(textOutput));
    text(fn, width/2-50, height/2-30);
  }
  if (language == "english") {
    textSize(4.8*uiSize);
    text("Set start money", width/2, height/2-300);
    if (textOutput < 100000000) textSize(2.5*uiSize);
    else textSize(2.2*uiSize);
    String fn = String.format("%,d", int(textOutput));
    text(fn, width/2-50, height/2-30);
  }
}
float mil=-1;
String Werror;
boolean showError;
void showError(String error, float s) {
  Werror = error;
  showError = true;
  Serror.play();
}

void floatError() {
  if (mil == -1) mil = millis();
  else if (millis() < mil+1500) {
    rectMode(CENTER);
    noStroke();
    fill(120, 120, 120, 150);
    rect(width/2, height/2, 800, 200);
    textAlign(CENTER, CENTER);
    fill(255);
    textFont(uiFont);
    textSize(2*uiSize);
    text(Werror, width/2, height/2);
  } else if (millis() >= mil+3000) {
    mil=-1;
    showError = false;
  }
}
