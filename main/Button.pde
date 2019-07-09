class Button{
  int x,y; // position of button (Mode:CENTER)
  int w,h; // width and height
  color buttonColorOut,textColorOut; // color when cursor is  INSIDE the button
  color buttonColorIn,textColorIn;   //                      OUTSIDE
  String buttonText;// 
  
  Button(int x0,int y0,int w0,int h0,String s0){
    x = x0;
    y = y0;
    w = w0;
    h = h0;
    buttonText = s0;
  }
  
  // Is cursor INSIDE the button?
  boolean isInside(){
    if(x-w/2 < mouseX && mouseX < x+w/2){
      if(y-h/2 < mouseY && mouseY < y+h/2){
        return true;
      }
      else return false;
    }    
    else return false;
  }
  
  void display(){
    
    //draw button
    rectMode(CENTER);    
    if(isInside()) fill(buttonColorIn);
    else           fill(buttonColorOut);
    rect(x,y,w,h);
    
    //draw text
    textAlign(CENTER);
    if(isInside()) fill(textColorIn);
    else           fill(textColorOut);
    text(buttonText,x,y);
  }
}
