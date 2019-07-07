class SceneManager{
  //flag to control scene 
  int sceneControlFlag = 0;
  
  void playScene(){
    //##################################//
    //#  sceneControlFlag manual       #//
    //#  value == 0  => start     menu #//
    //#  value == 1  => gameplay  menu #//
    //#  value == 2  => gameover  menu #//
    //#  value == 3  => gameclear menu #//
    //##################################//
    
    if(sceneControlFlag == 0){
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
