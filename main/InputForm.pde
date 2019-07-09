class InputForm {
  private Label label;
  private TypedCharSender typedCharSender;
  
  public InputForm(int x0, int y0) {
    label = new Label(x0, y0);
    typedCharSender = new TypedCharSender(label);
    observers.add(typedCharSender);
  }
  
  public void display() {
    label.display();
  }
  
  public void removeInputForm() {
    observers.remove(typedCharSender);
  }

  public String getText() {
    return label.getText();
  }
}
