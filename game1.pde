float px;
float py; //플레이어 위치
float ps = 10; //플레이어 속도

float bx[] = new float[50]; //총알 x위치
float by[] = new float[50]; //총알 y위치

float bullet_timer_sec = 0; //타이머 초
float bullet_timer_min = 0; //타이머 분

int bullet_point = 0; //점수

float bxs[] = new float[50]; //총알 x속도
float bys[] = new float[50]; //총알 y속도

int bxd[] = new int[50]; //총알 x방향
int byd[] = new int[50]; //총알 y방향

float tx[] = new float[50]; //총알 타겟x
float ty[] = new float[50]; //총알 타겟y
boolean bm[] = new boolean[50]; //총알이 살아있는가

int shotBullet = 0; //발사된 총알

boolean bullet_playing = false;

int bullet_round = 2;

int life = 5;

int bulletPoint = 0;

void mouseMoved() {
  if (title == false && bullet_playing == true && life > 0) {
    bulletPoint+=10;
  }
}

void bulletPlaying() {
  if (title == false && bullet_playing == true && life > 0) {
    background(#D290FF);
    px = mouseX;
    py = mouseY;
    image(smile, px, py, 60, 60);
    fill(255);
    if (language == "korean") text("예술 점수 : " + bulletPoint,width-200,100);
    if (language == "english") text("points : " + bulletPoint,width-200,100);
    if (bullet_round <= 3) {
      if (bulletMs == -1) bulletMs = millis();
      else if (millis() >= bulletMs+(500-(bullet_round*100))) {
        if (shotBullet+1 < 50) {
          shotBullet++;
          bulletDirection(shotBullet);
          bm[shotBullet] = true;
          bulletMs = -1;
        }
        if (shotBullet > 48) {
          if (sr == -1) sr = millis();
          else if (millis() <= sr+2000) {
            showRound();
          } else {
            sr = -1;
            bullet_round++;
            shotBullet = 0;
            bearLife+=life;
            bulletSetting();
          }
        }
      }
      for (int i=0; i<50; i++) {
        if (bm[i] == true) bulletMove(i);
      }
    } else {
      if (bulletMs == -1) bulletMs = millis();
      else if (millis() >= bulletMs+200) {
        if (shotBullet+1 < 50) {
          shotBullet++;
          bulletDirection(shotBullet);
          bm[shotBullet] = true;
          bulletMs = -1;
        }
        if (shotBullet > 48) {
          if (sr == -1) sr = millis();
          else if (millis() <= sr+2000) {
            showRound();
          } else {
            sr = -1;
            bullet_round++;
            shotBullet = 0;
            bulletSetting();
          }
        }
      }
      for (int i=0; i<50; i++) {
        if (bm[i] == true) bulletMove(i);
      }
    }
  }
  if (life < 1) {
    showDeath();
  }
}

void bulletSetting() {
  life = 5;
  px = width/2;
  py = height/2;
  bulletPosition();
  for (int i=0; i<50; i++) {
    bm[i] = false;
    if (bullet_round <= 12) {
      bxs[i] = 80-bullet_round*5;
      bys[i] = 80-bullet_round*5;
    } else {
      bxs[i] = 10;
      bys[i] = 10;
    }
  }
}

float dx[] = new float[50];
float dy[] = new float[50];

void bulletDirection(int i) {
  tx[i] = px;
  ty[i] = py;
  dx[i] = dist(tx[i], 0, bx[i], 0);
  dy[i] = dist(0, ty[i], 0, by[i]);
  if (bx[i] >= tx[i]) bxd[i] = -1;
  else bxd[i] = 1;
  if (by[i] >= ty[i]) byd[i] = -1;
  else byd[i] = 1;
}

void bulletMove(int i) {
  if (bm[i] == true) {
    if (bxd[i] == 1) bx[i] += dx[i] / bxs[i];
    else bx[i] -= dx[i] / bxs[i];
    if (byd[i] == 1) by[i] += dy[i] / bys[i];
    else by[i] -= dy[i] / bys[i];
    image(fire, bx[i], by[i], 30, 30);
    if ( dist(bx[i], by[i], px, py) < 50) {
      bm[i] = false;
      life--;
      hurt.play();
      fill(255,0,0,100);
      rectMode(CENTER);
      rect(width/2,height/2,width,height);
    }
  }
}
float average = 0;

int bearLife = 0;
int getMoney;

void showDeath() {
  imageMode(CENTER);
  image(bulletBackground, width/2, height/2, width, height);
  image(list, width/2, height/2, 800, 900);
  int first = int(average*(bullet_round-2));
  int second = int(average/10*bearLife);
  int third = int(bulletPoint);
  int total = int(first+second+third);
  String a = String.format("%,d", int(average));
  String a2 = String.format("%,d", int(average/10));
  String f = String.format("%,d", first);
  String s = String.format("%,d", second);
  String t = String.format("%,d", third);
  String to = String.format("%,d", total);
  getMoney = total;
  if (language == "korean") {
    textSize(1.2*uiSize);
    fill(0);
    textAlign(CENTER, CENTER);
    text("라운드 x" +a + " : " + f +"원", width/2, height/2-150);
    text("견딘 목숨 x" +a2 + " : " + s+"원", width/2, height/2-100);
    text("예술점수 : " + t+"원", width/2, height/2-50);
    textSize(1.5*uiSize);
    text("총 : " + to+"원", width/2, height/2+50);
    b_re(width/2-120, height/2+180);
    b_ex(width/2+120, height/2+180);
  }
  if (language == "english") {
    textSize(0.9*uiSize);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Rounds x" +a + " : " + f +"won", width/2, height/2-150);
    text("Save life x" +a2 + " : " + s+"won", width/2, height/2-100);
    text("Artistic : " + t+"won", width/2, height/2-50);
    textSize(1.2*uiSize);
    text("Total : " + to+"won", width/2, height/2+50);
    b_re(width/2-120, height/2+180);
    b_ex(width/2+120, height/2+180);
  }
}

void b_re(float x, float y) {
  strokeWeight(3);
  stroke(0);
  imageMode(CENTER);
  if (mousePressed) {
    if (mouseX <= x+125 && mouseX >= x-125 &&
      mouseY <= y+100 && mouseY >= y-100) {
      image(work, x, y, 220, 180);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.0*uiSize);
        text("재도전", x, y);
      }
      if (language == "english") {
        textSize(1.0*uiSize);
        text("Restart", x, y);
      }
      life = 5;
      bullet_round = 2;
      shotBullet = 0;
      bulletSetting();
      bulletPoint = 0;
    } else {
      image(work, x, y, 250, 200);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.2*uiSize);
        text("재도전", x, y);
      }
      if (language == "english") {
        textSize(1.2*uiSize);
        text("Restart", x, y);
      }
    }
  } else {
    image(work, x, y, 250, 200);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.2*uiSize);
      text("재도전", x, y);
    }
    if (language == "english") {
      textSize(1.2*uiSize);
      text("Restart", x, y);
    }
  }
}

void b_ex(float x, float y) {
  imageMode(CENTER);
  strokeWeight(3);
  stroke(0);
  if (mousePressed) {
    if (mouseX <= x+125 && mouseX >= x-125 &&
      mouseY <= y+100 && mouseY >= y-100) {
      image(work_done, x, y, 220, 180);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(0.8*uiSize);
        text("받고 나가기", x, y);
      }
      if (language == "english") {
        textSize(0.8*uiSize);
        text("Get&Exit", x, y);
      }
      screenMode = "workList";
      myMoney+=getMoney;
      bullet_playing = false;
      bulletBGM.stop();
      shotBullet = 0;
      bulletSetting();
      bullet_round = 2;
      life = 5;
      bulletPoint = 0;
      if (title == true) title = false;
    } else {
      image(work_done, x, y, 250, 200);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(1.0*uiSize);
        text("받고 나가기", x, y);
      }
      if (language == "english") {
        textSize(1.0*uiSize);
        text("Get&Exit", x, y);
      }
    }
  } else {
    image(work_done, x, y, 250, 200);
    textFont(uiFont);
    textAlign(CENTER, CENTER);
    fill(0);
    if (language == "korean") {
      textSize(1.0*uiSize);
      text("받고 나가기", x, y);
    }
    if (language == "english") {
      textSize(1.0*uiSize);
      text("Get&Exit", x, y);
    }
  }
}

void bulletPosition() {
  for (int i=0; i<bxs.length; i++) {
    int r = int(random(0, 100));
    if (r <= 50) {
      bx[i] = random(0, width);
      int r2 = int(random(0, 100));
      if (r2 <= 50) by[i] = 0;
      else by[i] = height;
    } else if (r > 50) {
      by[i] = random(0, height);
      int r2 = int(random(0, 100));
      if (r2 <= 50) bx[i] = 0;
      else bx[i] = width;
    }
  }
}

float bulletMs = -1;
float sr = -1;

void showRound() {
  imageMode(CENTER);
  image(ganpan, width/2, height/2, 300, 100);
  if (language == "korean") {
    textSize(1.4*uiSize);
    fill(0);
    text("라운드 " + bullet_round, width/2, height/2);
  }
  if (language == "english") {
    textSize(1.4*uiSize);
    fill(0);
    text("Round " + bullet_round, width/2, height/2);
  }
}
