//**************main****************/
SceneManager scene;
KeyManipulateObserver nullObserver = new NullObserver();
KeyManipulateObserver observerHandler = nullObserver;
PImage imgTitle, imgLose;
final String GAME_TITLE = "早打ち！！えかきうタイピング";

void setup(){
  size(800,800);
  surface.setTitle(GAME_TITLE);
  
  scene     = new SceneManager();
  
  imgTitle = loadImage("title.jpg");
  imgLose  = loadImage("lose.png");
  //setup font to change japanese text's size 
  PFont font = createFont("MS ゴシック",32);
  textFont(font);
  
  rectMode(CENTER);
}

void draw(){
  background(255);
  scene.playScene();
}

void keyPressed() {
  observerHandler.onPress(keyCode);
}

void keyReleased() {
  observerHandler.onRelease(keyCode);
}

void setObserver(KeyManipulateObserver o) {
  if(o == null) {
    observerHandler = nullObserver;
  } else {
    observerHandler = o;
  }
}
