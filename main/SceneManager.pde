class SceneManager{
  
  String[] typingTextList;
  Button startMenuButton = new Button(width/2,height/2,200,40,"スタート");
  Button gameclearMenuButton = new Button(width/2,height/2+100,200,40,"スタート画面に戻る");
  
  //a length of typing texts
  int typinglength;
  
  SceneManager(int lengths){
    typinglength = lengths;
    typingTextList = new String[typinglength];
  }
  

  //flag to control scene 
  int sceneControlFlag = 3;

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
      startMenuButton.display();
      if(mousePressed == true && startMenuButton.isInside()){
        sceneControlFlag = 1;
      }
      
    }else if(sceneControlFlag == 1){
      line(0,height/2,width,height/2);
      time.display();
      time.updateTime();
      
      if(time.isTimeUp()) sceneControlFlag=3;
    }else if(sceneControlFlag == 2){
      //make game over menu here
      
    }else{
      line(0,height/2,width,height/2);
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("ゲームクリア！！",width/2,height/2+50);
      gameclearMenuButton.display();
      if(mousePressed == true && gameclearMenuButton.isInside()){
          sceneControlFlag = 0;
      }
    }
  }
      
}
