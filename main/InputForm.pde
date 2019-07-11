// キーによる入力ができるフォーム
// (テキストボックスのようなもの)を作る。
// キーによる入力を無効にしたい場合や、
// このクラスのインスタンスを消したい場合は
// removeInputForm()を
// 実行する。

class InputForm {
  private Label label;
  private TypedCharSender typedCharSender;
  
  public InputForm(int x0, int y0) {
    label = new Label(x0, y0);
    typedCharSender = new TypedCharSender(label);
    observers.add(typedCharSender);
  }

  public void removeInputForm() {
    observers.remove(typedCharSender);
  }
  
  public void display() {
    label.display();
  }

  public String getText() {
    return label.getText();
  }
<<<<<<< HEAD

=======
  
>>>>>>> 47e751e9eab5507f8187f93b86121be7477b1ec6
  public void resetText() {
    label.resetText();
  }
}
