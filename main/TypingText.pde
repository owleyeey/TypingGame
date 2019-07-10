//問題文を表示する

class TypingText{
  int x,y;
  String[] text = {"apple","banana","orange"};
  
  TypingText(int x,int y){
    this.x = x;
    this.y = y;
  }
  
  public String[] getTexts(){
    return text;
  }
  
  //this function returns test's length
  public int getTextLength(){
    return text.length;
  }
  
  public void display(int num){
    stroke(0);
    textSize(50);
    textAlign(CENTER);
    text(text[num], x, y);
  }
}
