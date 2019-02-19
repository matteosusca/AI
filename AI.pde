Population test;
PVector goal = new PVector(400, 10);
ObstacleArr ostacoli = new ObstacleArr(5);



void setup(){
  size(800,800);
  test = new Population(3000, ostacoli);
  ostacoli.addOstacolo(new Obstacle(0,height/4,600,10));
  ostacoli.addOstacolo(new Obstacle(200,(height/4)*2,600,10));
  ostacoli.addOstacolo(new Obstacle(0,(height/4)*3,600,10));
}

void draw(){
  background(255);
  fill(255, 0, 0);
  ellipse(goal.x, goal.y, 10, 10);
  
  ostacoli.updateOb();
  
  //fill(0,0,255);

  //rect(ostacolo.x,ostacolo.y,ostacolo.larghezza,ostacolo.altezza);
  
  if(test.allDotsDead()){
    test.calculateFitness();
    test.naturalSelection();
    test.mutateDemBabies();
  } else {
    test.update();
    test.show();
  } 
}
