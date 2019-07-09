class TypedCharSender implements KeyManipulateObserver {
  private final int SHIFT_KEY = 16;
  private final int BACKSPACE_KEY = 8;
  private final int SPACE_KEY = 32;
  private final int ENTER_KEY = 10;
  private Label inputTarget;
  private boolean isShiftKeyPressed;
  
  public TypedCharSender(Label target) {
    inputTarget = target;
    isShiftKeyPressed = false;
  }

  public void setInputTarget(Label target) {
    inputTarget = target;
  }
  
  public void onPress(int code) {
    if(inputTarget == null) {
      return;
    }
    
    if(isAlphabetKeyCode(code)) {
      if(isShiftKeyPressed) {
        inputTarget.pushBack((char)code);
      } else {
        inputTarget.pushBack((char)upperKeyCodeToLower(code));
      }
    }
    
    if(isNumericKeyCode(code)) {
      if(!isShiftKeyPressed) {
        inputTarget.pushBack((char)code);
      }
    }
    
    if(code == SHIFT_KEY) {
      isShiftKeyPressed = true;
    }
    
    if(code == BACKSPACE_KEY) {
      inputTarget.removeLastChar();
    }
    
    if(code == SPACE_KEY) {
      inputTarget.pushBack(' ');
    }   
  }
  
  public void onRelease(int code) {
    if(inputTarget == null) {
      return;
    }
    
    if(code == SHIFT_KEY) {
      isShiftKeyPressed = false;
    }
  }
  
  private boolean isAlphabetKeyCode(int code) {
    return 'A' <= code && code <= 'Z';
  }
  
  private boolean isNumericKeyCode(int code) {
    return '0' <= code && code <= '9';
  }
  
  private int upperKeyCodeToLower(int code) {
    return code + 32;
  }
}