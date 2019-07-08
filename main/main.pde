//**************main****************/
SceneManager s;
Timer time;
TypingText typing;

void setup(){
  size(600,600);
  
  int typinglength;
  typing = new TypingText();
  typinglength = typing.getTextLength();
  
  s = new SceneManager(typinglength);
  time = new Timer();
  
  for(int i=0; i<typinglength; i++){
    s.typingTextList[i] = typing.text[i];
  }
  
  //you can change default time 
  time.changeTime(20);
  
  //setup font to change japanese text's size 
  PFont font = createFont("MS ゴシック",32);
  textFont(font);
  
  rectMode(CENTER);
  
  
}

void draw(){
  background(255);
  s.playScene();
}
