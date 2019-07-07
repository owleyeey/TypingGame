//**************main****************/
SceneManager s;
Timer time;

void setup(){
  size(600,600);
  s = new SceneManager();
  time = new Timer();
  time.changeTime(5);
  
  //setup font to change japanese text's size 
  PFont font = createFont("MS ゴシック",32);
  textFont(font);
  
  rectMode(CENTER);
  
}

void draw(){
  background(255);
  s.playScene();
}
