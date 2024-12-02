boolean math_playing = false;
boolean roundClear = true;
boolean math_timeout = false;
int mathPoint = 0;

int fv;
int sv;
String what;
int answer;

int false_ans[] = new int[4];
int select[] = new int[4];

float math_sec = 6000;

int setNumber(int a, int b) {
  int value = int(random(a, b));
  return value;
}

void setNumber() {
  fv = setNumber(1, 20);
  sv = setNumber(1, 20);
}

void setWhat() {
  int r = int(random(1, 4));
  if (r == 1) what = "+";
  if (r == 2) what = "-";
  if (r == 3) what = "×";
}

void mathPlaying() {
  if (math_timeout == false) {
    rectMode(CORNER);
    stroke(0);
    strokeWeight(3);
    fill(150);
    rect(width/2-400, 100, 800, 40, 80);
    math_sec-= 2;
    float remain = (math_sec/6000 * 800);
    noStroke();
    fill(#F7F057);
    rect(width/2-400, 101, remain, 39, 80);
    if (math_sec <= 10) math_timeout = true;
    imageMode(CENTER);
    image(snews, width-200, 100, 300, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(1.0*uiSize);
    if (language == "english") text("Points : " + mathPoint, width-200, 100);
    if (language == "korean") text("점수 : " + mathPoint, width-200, 100);
    if (roundClear == true) {
      roundClear = false;
      setNumber();
      setWhat();
      if (what == "+") answer = fv+sv;
      if (what == "-") answer = fv-sv;
      if (what == "×") answer = fv*sv;
      for (int i=0; i<4; i++) {
        int rr = int(random(0, 100));
        if (rr <= 50) false_ans[i] = answer-int(random(-20, 20));
        else false_ans[i] = answer*2;
      }
      int r = int(random(0, 3));
      select[r] = answer;
      if (r != 0) select[0] = false_ans[0];
      if (r != 1) select[1] = false_ans[1];
      if (r != 2) select[2] = false_ans[2];
      if (r != 3) select[3] = false_ans[3];
    } else {
      imageMode(CENTER);
      image(resol, width/2, height/2-200, 500, 250);
      fill(0);
      textSize(2*uiSize);
      text(fv + " " + what + " " + sv, width/2, height/2-200);
      //
      b_answer(width/2-300, height/2+100, 0);
      b_answer(width/2+300, height/2+100, 1);
      b_answer(width/2-300, height/2+350, 2);
      b_answer(width/2+300, height/2+350, 3);
    }
  }
  else showMathTitle();
}

void showMathTitle() {
  imageMode(CENTER);
  image(list, width/2, height/2, 800, 900);
  int first = int(average*(mathPoint/13));
  int third = int(mathPoint*10);
  int total = int(first+third);
  String a = String.format("%,d", int(average));
  String f = String.format("%,d", first);
  String t = String.format("%,d", third);
  String to = String.format("%,d", total);
  getMoney = total;
  if (language == "korean") {
    textSize(1.2*uiSize);
    fill(0);
    textAlign(CENTER, CENTER);
    text("점수 x" +a + " : " + f +"원", width/2, height/2-150);
    text("추가 점수 : " + t+"원", width/2, height/2-50);
    textSize(1.5*uiSize);
    text("총 : " + to+"원", width/2, height/2+50);
    b_mathRe(width/2-120, height/2+180);
    b_mathEx(width/2+120, height/2+180);
  }
  if (language == "english") {
    textSize(0.9*uiSize);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Points x" +a + " : " + f +"won", width/2, height/2-150);
    text("Additional Tax : " + t+"won", width/2, height/2-50);
    textSize(1.2*uiSize);
    text("Total : " + to+"won", width/2, height/2+50);
    b_mathRe(width/2-120, height/2+180);
    b_mathEx(width/2+120, height/2+180);
  }
}

void b_mathRe(float x, float y) {
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
      math_timeout = false;
      math_sec = 6000;
      mathPoint = 0;
      roundClear = true;
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

void b_mathEx(float x, float y) {
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
      math_playing = false;
      mathBGM.stop();
      mathPoint = 0;
      math_timeout = false;
      math_sec = 6000;
      roundClear = true;
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

void b_answer(float x, float y, int i) {
  imageMode(CENTER);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (mousePressed) {
    if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
      mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
      clickedWhat = "answer";
      clickedInt = i;
      image(ganpan, x, y, 250, 120);
      textSize(1.0*uiSize);
      text(select[i], x, y);
    } else {
      image(ganpan, x, y, 300, 140);
      textSize(1.2*uiSize);
      text(select[i], x, y);
    }
  } else {
    image(ganpan, x, y, 300, 140);
    textSize(1.2*uiSize);
    text(select[i], x, y);
  }
}
