/********************************************************
--parameter--
  second : remaining time 

--method--
  isTimeUp()      : judge time-out.
  updateTime()    : subtract 1 from 'second' per 1 sec.
  changeTime(arg) : change value of 'second' to 'arg'
  display()       : draw 'second' on display
 
*********************************************************/
class Timer{
  private int second = 0;
  
  boolean isTimeUp(){
    if(second <= 0){
      return true;
    }
    return false;
  }
  
  public void updateTime(){
    if(frameCount%60 == 0){
      second -= 1;
      if(second < 0){
        second = 0;
      }
    }
  }
  
  public void changeTime(int x){
    second = x;
  } 
  
  public void display(){
    fill(0);
    textSize(20);
    text(time.second, width/10, height/10);
  }
}
