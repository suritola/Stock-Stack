float graphX;
float graphY;
float graphSize;

void drawGraph(float x, float y, float size, int n) {
  graphX=x;
  graphY=y;
  graphSize = size;
  rectMode(CENTER);
  fill(255, 255, 255);
  strokeWeight(1);
  stroke(0);
  rect(x, y, 5*size, 3*size, 50);
  rectMode(CENTER);
  fill(#429B8E);
  strokeWeight(1);
  stroke(0);
  imageMode(CENTER);
  image(empty_UI, x, y-1.5*size, 3*uiSize, 1.5*uiSize);
  textFont(uiFont);
  textAlign(CENTER, CENTER);
  fill(0);
  if (language == "korean") {
    textSize(1.0*uiSize);
    text("차트", x, y-1.5*size);
    fill(50, 50, 50, 50);
    textSize(1.2*uiSize);
    text("자세히 보려면 클릭", x, y);
  }
  if (language == "english") {
    textSize(0.95*uiSize);
    text("Graph", x, y-1.5*size);
    fill(50, 50, 50, 50);
    textSize(0.9*uiSize);
    text("Click here to see more detail", x, y);
  }
  float max=0, min=0;
  float down = y+1.5*size;
  float right = x+2.5*size;
  max = (round(price[n]/10000)*10000)*2;
  min = (round(price[n]/10000)*10000)/2;
  for (int i=0; i<298; i++) {
    if (graphPrice[n][i] != -1) {
      float gap = max-min;
      float u= ((5*size)/300);
      strokeWeight(3);
      stroke(0);
      fill(0);
      point(right-u*i, (down-((3*size)*(graphPrice[n][i] / gap)))+50);
    }
  }
}
