//**************main****************//
Timer time;

void setup(){
  size(300, 400);
  time = new Timer();
  time.changeTime(5);
}

void draw(){
  background(255);
  time.display();
  time.updateTime();
}
