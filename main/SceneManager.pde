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
      text("描き歌タイピング",width/6,height/5);
      fill(255);
      rect(width/2,height/2,160,40);
      fill(0);
      textSize(20);
      text("スタート",width/2-40,height/2+10);
    }else if(sceneControlFlag == 1){
    }else if(sceneControlFlag == 2){
    }else{
    }
  }
  
  void drawTitleText(){
  }
  
  void isKeyPressed(){
  }
}
