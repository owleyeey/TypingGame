//**************main****************/
SceneManager s;

void setup(){
  size(600,600);
  s = new SceneManager();
  
  //setup font to change japanese text's size 
  PFont font = createFont("MS ゴシック",32);
  textFont(font);
  
  rectMode(CENTER);
  
}

void draw(){
  background(255);
  s.playScene();
}
