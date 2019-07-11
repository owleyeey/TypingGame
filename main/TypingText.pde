//問題文を表示する

class TypingText{
  int x,y;
  String[] text = {"a",//"maruiosaragaarimashita"
                   "a",//"maruiodangonosemashita"
                   "a",//"sorekarakuroimamehutatsu"
                   "a",//"mayugepikupikuoisisou"
                   "a",//"hoppetapukunntohukurande"
                   "a",//"nikkoriwaratte"
                   "a",//"annpannmann"
                  };
  
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
    textSize(30);
    textAlign(CENTER);
    text(text[num], x, y);
  }
}
