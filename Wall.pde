class Wall {
 
  float wallX;
  float wallY;
  float wallW;
  float wallH;
 
  Wall(float tempX, float tempY, float tempW, float tempH){
    wallX = tempX;
    wallY = tempY;
    wallW = tempW;
    wallH = tempH ;
  }
 
  void draw(){
    fill(255);
    rect(wallX,wallY,wallW,wallH);
  }
}
