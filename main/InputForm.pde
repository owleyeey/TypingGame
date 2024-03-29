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
    setObserver(typedCharSender);
  }

  public void removeInputForm() {
    setObserver(null);
  }
  
  public void display() {
    label.display();
  }

  public String getText() {
    return label.getText();
  }

  public void resetText() {
    label.resetText();
  }
}
