class ObstacleArr{
  Obstacle [] ostacoli;
  ObstacleArr(int lunghezza){
    ostacoli = new Obstacle[lunghezza];
  }
  
  void addOstacolo(Obstacle o){
    for(int i=0; i<ostacoli.length; i++){
      if(ostacoli[i]==null){
        ostacoli[i] = o;
        break;
      }
    }
  }
  
  void updateOb(){
    for (int i = 0; i<ostacoli.length; i++){
      if(ostacoli[i]!=null)
        ostacoli[i].show();
    }
  }
}
