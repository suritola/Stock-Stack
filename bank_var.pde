float depMoney_orange = 0; //현재 예금액
float depMoney_pig = 0;
float depMoney_hama = 0;

float interest_orange; //이자
float interest_pig;
float interest_hama;

void setBank() {
  interest_orange = random(-1.0,3.0);
  interest_pig = random(-1.0,3.0);
  interest_hama = random(-1.0,3.0);
  interest_orange = round(interest_orange*100)/100.0;
  interest_pig = round(interest_pig*100)/100.0;
  interest_hama = round(interest_hama*100)/100.0;
}

int orangeGet;
int pigGet;
int hamaGet;
