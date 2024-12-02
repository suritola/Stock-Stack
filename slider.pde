void vol_slider(float x, float y) {
  stroke(0);
  strokeWeight(5);
  noFill();
  rectMode(CORNER);
  rect(x, y, 250, 50, 50);

  strokeWeight(5);
  if (music == true) fill(#FFC34B);
  else if (music == false) fill(#767676);
  rect(x, y, slider_volX+20, 50, 50);
  
  stroke(#2E2E2E);
  strokeWeight(1);
  fill(255);
  ellipse(x+slider_volX, y+25, 50, 50);
  if (music == true) {
    show_vol_music = round((slider_volX/222)*100);
    if (mousePressed) {
      if (mouseX >= x+25 && mouseX <= x+250-25 && mouseY >= y && mouseY <= y+50) {
        slider_volX = mouseX-x;
      }
    }
  }
}

float slider_volX = 100;
int show_vol_music;

void bright_slider(float x, float y) {
  stroke(0);
  strokeWeight(5);
  noFill();
  rectMode(CORNER);
  rect(x, y, 250, 50, 50);

  strokeWeight(5);
  fill(#FFC34B);
  rect(x, y, bright+20, 50, 50);
  
  stroke(#2E2E2E);
  strokeWeight(1);
  fill(255);
  ellipse(x+bright, y+25, 50, 50);
    show_bright = round((bright/222)*100);
    if (mousePressed) {
      if (mouseX >= x+25 && mouseX <= x+250-25 && mouseY >= y && mouseY <= y+50) {
        bright = mouseX-x;
    }
  }
}

float bright = 150;
int show_bright;
