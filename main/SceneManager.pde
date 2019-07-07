class SceneManager{
  
  //flag to control scene 
  int sceneControlFlag = 0;
  
  //function to display scenes
  void playScene(){
    //##################################//
    //#  sceneControlFlag manual       #//
    //#  value == 0  => start     menu #//
    //#  value == 1  => gameplay  menu #//
    //#  value == 2  => gameover  menu #//
    //#  value == 3  => gameclear menu #//
    //##################################//
    
    if(sceneControlFlag == 0){
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("描き歌タイピング",width/2,height/5);
      button(width/2,height/2,width/2,height/2+10,"スタート");
      if(isMouseInside(width/2,height/2,160,40)){
        if(mousePressed == true){
          sceneControlFlag += 1;
        }
      }
    }else if(sceneControlFlag == 1){
      line(0,height/2,width,height/2);
      time.display();
      time.updateTime();
    }else if(sceneControlFlag == 2){
    }else{
    }
  }
  
  //please use this function when you want to make a button
  void button(int rectX,int rectY,int textX,int textY,String s){
      fill(255);
      if(isMouseInside(rectX,rectY,160,40) == true){
        fill(255,0,0);
      }
      rect(rectX,rectY,160,40);
      fill(0);
      if(isMouseInside(rectX,rectY,160,40) == true){
        fill(255);
      }
      textSize(20);
      text(s,textX,textY);
  }
  
  //function to check that mouse cursor is inside or outside 
  Boolean isMouseInside(int rectX,int rectY,int rectW,int rectH){
    if(mouseX >= rectX-rectW/2 && mouseX <= rectX+rectW/2 && mouseY >= rectY-rectH/2 && mouseY <= rectY+rectH/2){
      return true;
    }
    return false;
  }
  
  
  void drawTitleText(){
  }
  
  void isKeyPressed(){
  }
}
