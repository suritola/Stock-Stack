float workX;
float workY;
void b_work(float x, float y) {
  workX = x;
  workY = y;
  if (showSetting == false) {
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
          text("근무", x+40, y);
        }
        if (language == "english") {
          textSize(2.2*uiSize);
          text("Work", x+40, y);
        }
        image(pickaxe, x-100, y, 70, 70);
      } else {
        image(empty_UI, x, y, 12*uiSize, 5*uiSize);
        textFont(uiFont);
        textAlign(CENTER, CENTER);
        fill(0);
        if (language == "korean") {
          textSize(2.5*uiSize);
          text("근무", x+40, y);
        }
        if (language == "english") {
          textSize(2.4*uiSize);
          text("Work", x+40, y);
        }
        image(pickaxe, x-100, y, 80, 80);
      }
    } else {
      image(empty_UI, x, y, 12*uiSize, 5*uiSize);
      textFont(uiFont);
      textAlign(CENTER, CENTER);
      fill(0);
      if (language == "korean") {
        textSize(2.5*uiSize);
        text("근무", x+40, y);
      }
      if (language == "english") {
        textSize(2.4*uiSize);
        text("Work", x+40, y);
      }
      image(pickaxe, x-100, y, 80, 80);
    }
  }
}

void workList() {
  imageMode(CENTER);
  image(list, width/2, height/2, 1200, 1300);
  image(ganpan, width/2, height/2-430, 340, 100);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(1.3*uiSize);
    text("할 일 목록", width/2, height/2-430);
  }
  if (language == "english") {
    textSize(1.3*uiSize);
    text("Work List", width/2, height/2-430);
  }
  b_back(width-100, height-100);
  work(width/2, height/2-200, 0);
  work(width/2, height/2, 1);
}

void work(float x, float y, int i) {
  imageMode(CENTER);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (mousePressed) {
    if (mouseX <= x+6*uiSize && mouseX >= x-6*uiSize &&
      mouseY <= y+2.5*uiSize && mouseY >= y-2.5*uiSize) {
      if (workDone[i] == false && showSetting == false && title == false) {
        image(work, x, y, 17*uiSize, 12.5*uiSize);
        page.play();
        if (i == 0) {
          bullet_playing = true;
          screenMode = "bullet";
          for (int a=0; a<6; a++) {
            average+=price[ran[a]];
          }
          average = int(average/60);
        }
        if (i == 1) {
          for (int a=0; a<6; a++) {
            average+=price[ran[a]];
          }
          average = int(average/60);
          math_playing = true;
          screenMode = "math";
          math_sec = 6000;
          roundClear = true;
          math_timeout = false;
        }
      }
      if (workDone[i] == true) image(work_done, x, y, 17*uiSize, 12.5*uiSize);
      if (language == "korean") {
        textSize(1.2*uiSize);
        text(works[i], x, y);
      }
      if (language == "english") {
        textSize(1.2*uiSize);
        text(Eworks[i], x, y);
      }
    } else {
      if (workDone[i] == false) image(work, x, y, 18*uiSize, 13.5*uiSize);
      if (workDone[i] == true) image(work_done, x, y, 18*uiSize, 13.5*uiSize);
      if (language == "korean") {
        textSize(1.2*uiSize);
        text(works[i], x, y);
      }
      if (language == "english") {
        textSize(1.2*uiSize);
        text(Eworks[i], x, y);
      }
    }
  } else {
    if (workDone[i] == false) image(work, x, y, 18*uiSize, 13.5*uiSize);
    if (workDone[i] == true) image(work_done, x, y, 18*uiSize, 13.5*uiSize);
    if (language == "korean") {
      textSize(1.2*uiSize);
      text(works[i], x, y);
    }
    if (language == "english") {
      textSize(1.2*uiSize);
      text(Eworks[i], x, y);
    }
  }
}


boolean workDone[] = new boolean[5];
String works[] = new String[5];
String Eworks[] = new String[5];
