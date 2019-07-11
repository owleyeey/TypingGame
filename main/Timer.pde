/********************************************************
Timer : draw remaining time
--parameter--
  second : remaining time 

--method--
  isTimeUp()      : judge time-out.
  updateTime()    : subtract 1 from 'second' per 1 sec.
  changeTime(arg) : change value of 'second' to 'arg'
  display()       : draw 'second' on display
 
*********************************************************/
class Timer{
  private float second  = 0;
  private float second0 = 0;
  boolean isTimeUp(){
    if(second <= 0){
      return true;
    }
    return false;
  }
  
  public void updateTime(){
    //if(frameCount%60 == 0){
      second -= 0.0166;
      if(second < 0){
        second = 0;
      }
    //}
  }
  
  public void changeTime(int x){
    second  = float(x);
    second0 = float(x);
  }
  
  public void display(){
    fill(100, 250, 100);
    noStroke();
    float w = width * second / second0;
    rect(0, height/2-5, w*2, 10);
    //textSize(20);
    //textAlign(CENTER);
    //text(second, width/10, height/10);
  }
  
}
