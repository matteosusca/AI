class Obstacle{
  int x;
  int y;
  int altezza;
  int larghezza;
  Obstacle(int x, int y, int larghezza,int altezza){
    this.x = x;
    this.y = y;
    this.altezza = altezza;
    this.larghezza = larghezza;
  }
  
  void show(){
    fill(0,0,255);
    rect(this.x,this.y,this.larghezza,this.altezza);    
  }

}
