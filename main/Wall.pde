class Wall {
 
  float wallX; // Wall X Pos
  float wallY; // Wall Y Pos
  float wallW; // Wall Width
  float wallH; // Wall Height
  float wallC; // Wall Color
 
  Wall(float tempX, float tempY, float tempW, float tempH){
    wallX = tempX;
    wallY = tempY;
    wallW = tempW;
    wallH = tempH;
    wallC = 255;
  }
 
  void draw(){
    //display the walls with these values
    rectMode(CORNER);
    fill(wallC);
    rect(wallX,wallY,wallW,wallH);
  }
}
