String name[] = new String[20]; //국내주식 이름
String Ename[] = new String[20]; //주식 영어이름

float price[] = new float[20]; //국내주식 주가

float save_price[] = new float[20];

int traffic[] = new int[20]; //국내주식 변동률

float total[] = new float[20]; //국내주식 시가총액

int change[] = new int[6];

float hope_sell_price[][] = new float[6][20];

float hope_buy_price[][] = new float[6][20];

int hope_sell[][] = new int[6][20];
int hope_buy[][] = new int[6][20];

int ran[] = new int[6];

int have[] = new int[20];

float buyPrice[] = new float[20];

float wantPrice = 0;
int wantAmount = 0;

float totalS=0;

float ave[] = new float[20];

boolean marketP = false;

ArrayList<Integer> Kr = new ArrayList<Integer>();

float graphPrice[][] = new float[20][1920];


int ran(int a, int b) {
  int sum = int(random(a, b));
  return sum;
}

void resetPercent() {
  for (int i=0; i<20; i++) {
    save_price[i] = price[i];
  }
  for (int i=0; i<6; i++) {
    for (int a=0; a<20; a++) {
      hope_sell[i][a] = 1;
      hope_buy[i][a] = 1;
    }
  }
}

int hs=-1;

void Hope() {
  if (nowMarket != "휴장") {
    if (hs == -1) {
      hs = millis();
    } else if (millis() >= hs+500/speed) {
      hs = millis();
      if (min % 2 == 0) {
        float av=0;
        for (int i=0; i<6; i++) {
          av+=price[ran[i]];
        }
        av = av/6;
        for (int i=0; i<6; i++) {
          int r= int(random(0, 100));
          int p = round(price[ran[i]]);
          p = 1 - ( p / round(av) );
          if (r < 50+p*1.5) {
            change[i] = 1;
          } else {
            change[i] = -1;
          }
        }
      }
      if (screenMode != "start" && screenMode != "help" && screenMode != "setMoney" && screenMode != "setStock1" && screenMode != "setStock") {
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
  }
}


void stocks() {
  Hope();
  for (int i=0; i<20; i++) {
    Kr.add(i);
  }
  for (int i=0; i<6; i++) {
    int index1 = int(random(Kr.size()));
    ran[i] = Kr.get(index1);
    Kr.remove(index1);
  }
  for (int i=0; i<6; i++) change[i] = 1;
  //국내주식
  name[0] = "샘송전자";
  name[1] = "LZ전자";
  name[2] = "에고브로";
  name[3] = "제이바이오";
  name[4] = "앵두전선";
  name[5] = "알새우증권";
  name[6] = "준성전자";
  name[7] = "성덕엔터테인먼트";
  name[8] = "고상한동";
  name[9] = "아침뱃살";
  name[10] = "(주)민망근";
  name[11] = "(주)범균바이오";
  name[12] = "한동전자";
  name[13] = "광 민박";
  name[14] = "대구대규뽈찜";
  name[15] = "까까오똑";
  name[16] = "조기요";
  name[17] = "포장의민족";
  name[18] = "전기장터";
  name[19] = "정금백화점";
  //
  Ename[0] = "semsong";
  Ename[1] = "LZ";
  Ename[2] = "Egopro";
  Ename[3] = "J-BIO";
  Ename[4] = "I.Cherry";
  Ename[5] = "S.shrimp";
  Ename[6] = "junsung";
  Ename[7] = "sungduckment";
  Ename[8] = "gosang";
  Ename[9] = "Morning";
  Ename[10] = "I.mangeun";
  Ename[11] = "I.gyun";
  Ename[12] = "Handong";
  Ename[13] = "light.h";
  Ename[14] = "pigpig";
  Ename[15] = "gagao";
  Ename[16] = "jogiyo";
  Ename[17] = "Pojangs";
  Ename[18] = "electma";
  Ename[19] = "PureGold";
  for (int i=0; i<20; i++) {
    int r= int(random(0, 100));
    if (r <= 70) {
      price[i] = int(random(10000, 100000));
      price[i] = round(price[i]/1000)*1000;
    } else {
      price[i] = int(random(100000, 1000000));
      price[i] = round(price[i]/1000)*1000;
    }
    save_price[i] = price[i];
    total[i] = price[i]*470;
    traffic[i] = int(random(10, 80));
  }
  for (int i=0; i<20; i++) {
    for (int a=0; a<1919; a++) graphPrice[i][a] = -1;
  }
}
