//問題文を表示する

class TypingText{
  int x,y;
  String[] text = {"maruiosaragaarimasita",
                   "maruiodanngonosemasita",
                   "sorekarakuroimamehutatu",
                   "mayugepikupikuoisisou",
                   "hoppetapukunntohukurannde",
                   "nikkoriwaratte",
                   "annpannmann",
                  };
  
  String[] hiraganaText = {"まるいおさらがありました",
                           "まるいおだんごのせました",
                           "それからくろいまめふたつ",
                           "まゆげぴくぴくおいしそう",
                           "ほっぺたぷくんとふくらんで",
                           "にっこりわらって",
                           "あんぱんまん"
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
  
  public void display(int num, String inputtedText){
    int textLeftX = (width / 2) - (int)(9 * text[num].length());
    displayCurrentQuestion(textLeftX, num);
    displayInputtedText(textLeftX, inputtedText);
    displayHiraganaText(num);
  }
  
  private void displayCurrentQuestion(int leftX, int num) {
    fill(200);
    textSize(30);
    textAlign(LEFT);
    text(text[num], leftX, y);
  }
  
  private void displayInputtedText(int leftX, String inputtedText){
    fill(0);
    textSize(30);
    textAlign(LEFT);
    text(inputtedText, leftX, y);
  } 
  
  private void displayHiraganaText(int num){
    fill(0);
    textSize(30);
    textAlign(CENTER);
    text(hiraganaText[num], x, y - 50);
  }
}
