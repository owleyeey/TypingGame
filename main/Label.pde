// 文字列と、それを表示する座標を保持するクラス。
// display()メソッドで、保持している文字列を表示する。
// 別のファイルにあるTypedCharSenderクラスは、
// このクラスのインスタンスが保持する文字列に対して、
// タイピングされた文字を追加する処理を行う。

class Label {
  private String text;
  private int x;
  private int y;
  
  public Label(int x, int y) {
    this.text = "";
    this.x = x;
    this.y = y;
  }
  
  public void pushBack(char c) {
    text += c;
  }
  
  public void removeLastChar() {
    if(text.length() > 0) {
      text = text.substring(0, text.length() - 1);
    }
  }
  
  public void display() {
    stroke(0);
    textSize(30);
    textAlign(CENTER);
    text(text, x, y);
  }

  public String getText() {
    return text;
  }
<<<<<<< HEAD

  public void resetText() {
    text = "";
  }
}
=======
  
  public void resetText(){
    text = "";
  }
}
>>>>>>> 47e751e9eab5507f8187f93b86121be7477b1ec6
