class Finish {
 
  float finishX; // Finish Wall X Pos
  float finishY; // Finish Wall Y Pos
  float finishW; // Finish Wall Width
  float finishH; // Finish Wall Height
 
  Finish(float tempX, float tempY, float tempW, float tempH){
    finishX = tempX;
    finishY = tempY;
    finishW = tempW;
    finishH = tempH;
  }
 
  void draw(){
    //display the finish line with these values
    rectMode(CORNER);
    fill(#0EED1B);
    rect(finishX,finishY,finishW,finishH);
  }
}
