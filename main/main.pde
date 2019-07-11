//**************main****************/
import java.util.HashSet;

SceneManager scene;
HashSet<KeyManipulateObserver> observers;
final String GAME_TITLE = "早打ち！！えかきうタイピング";

void setup(){
  size(600,800);
  surface.setTitle(GAME_TITLE);
  
  scene     = new SceneManager();
  
  observers = new HashSet<KeyManipulateObserver>();
  
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
  for(KeyManipulateObserver elem : observers) {
    elem.onPress(keyCode);
  }
}

void keyReleased() {
  for(KeyManipulateObserver elem : observers) {
    elem.onRelease(keyCode);
  }
}
