<<<<<<< HEAD
//**************main****************/
import java.util.HashSet;

SceneManager s;
Timer time;
TypingText typing;
HashSet<KeyManipulateObserver> observers;

void setup(){
  size(600,600);
  
  int typinglength;
  typing = new TypingText();
  typinglength = typing.getTextLength();
  
  s = new SceneManager(typinglength);
  time = new Timer();
  
  observers = new HashSet<KeyManipulateObserver>();
  
  for(int i=0; i<typinglength; i++){
    s.typingTextList[i] = typing.text[i];
  }
  
  //you can change default time 
  time.changeTime(20);
  
  //setup font to change japanese text's size 
  PFont font = createFont("MS ゴシック",32);
  textFont(font);
  
  rectMode(CENTER);
  
=======
void setup(){
>>>>>>> 1f7e9d772ace3807e24dd27c3d6eb5e1f4028886
  
}

void draw(){
<<<<<<< HEAD
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
=======

>>>>>>> 1f7e9d772ace3807e24dd27c3d6eb5e1f4028886
}
