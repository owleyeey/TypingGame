//**************main****************/
import java.util.HashSet;

SceneManager s;
HashSet<KeyManipulateObserver> observers;

void setup(){
  size(600,600);
  
  s = new SceneManager();
  
  observers = new HashSet<KeyManipulateObserver>();
  
  //setup font to change japanese text's size 
  PFont font = createFont("MS ゴシック",32);
  textFont(font);
  
  rectMode(CENTER);
}

void draw(){
  background(255);
  s.playScene();
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
