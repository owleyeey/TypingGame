class SceneManager{
  
  TypingText  typing;  
  InputForm   input;
  Timer       time;
  Charactor   chara;
  AfterInput  afterinput;
  
  JudgeAnswer judge      = new JudgeAnswer();
  
  Button startMenuButton     = new Button(width/2,height * 2/3,200,40,"スタート");
  Button gameclearMenuButton = new Button(width/2,height/2+100,200,40,"スタート画面に戻る");
  Button easingButton        = new Button(width/2,height/2+100,240,40,"難易度を下げてリトライ");
  Button retryButton         = new Button(width/2,height/2+150,240,40,"リトライ");
  Button toTitleButton       = new Button(width/2,height/2+200,240,40,"スタート画面に戻る");
  
  //flag to control scene 
  String sceneControlFlag = "startMenu";
  
  //setup the default question number
  int questionNum = 0;
  
  //setup the time limits
  int timeLimits = 6; //4
  
  // A parameter "timeLimits" NEVER has bigger value than this one.
  int EasiestLimit = 10;
  
  //setup the delay time when a player push a button
  int delayTime = 1000;
  
  int mistakeMessageFlag = 0;

  //function to display scenes
  void playScene(){
    
    if(sceneControlFlag == "startMenu"){
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("早打ち！！\nえかきうタイピング",width/2,height/3);
      startMenuButton.display();
      if(mousePressed == true && startMenuButton.isInside()){
        delay(delayTime);
        sceneControlFlag = "gameMenu";
        makingObjectsForReset(); 
        time.changeTime(timeLimits);
      }
      
    }else if(sceneControlFlag == "gameMenu"){
      line(0,height/2,width,height/2);
      time.display();
      time.updateTime();
      chara.display();
      
      //display question
      typing.display(questionNum, input.getText());

      //display inputform
      input.display();
      
      if(keyPressed == true){
        if(key == ENTER){
          if(input.getText() != ""){
            afterinput.afterInputProcess();
          }
        }
      }
      
      if(mistakeMessageFlag == 1){
        fill(255,0,0);
        textSize(20);
        text("×違います",width/2,height/2+150);
      }
      
      if(time.isTimeUp()){ 
        sceneControlFlag = "gameoverMenu";
      }
      
    }else if(sceneControlFlag == "gameoverMenu"){
      //make game over menu here
      chara.display();
      
      line(0,height/2,width,height/2);
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("ゲームオーバー",width/2,height/2+50);
      easingButton.display();
      if(mousePressed == true && easingButton.isInside()){
        // ease the difficulty (not done yet)
          timeLimits = timeLimits + 1;
          if(timeLimits > EasiestLimit) timeLimits = EasiestLimit;
          delay(delayTime);
          sceneControlFlag = "gameMenu";
          makingObjectsForReset(); 
          time.changeTime(timeLimits);
          questionNum = 0;
          mistakeMessageFlag = 0;
      }
      retryButton.display();
      if(mousePressed == true && retryButton.isInside()){
          delay(delayTime);
          sceneControlFlag = "gameMenu";
          makingObjectsForReset(); 
          time.changeTime(timeLimits);
          questionNum = 0;
          mistakeMessageFlag = 0;
      }
      toTitleButton.display();
      if(mousePressed == true && toTitleButton.isInside()){
          sceneControlFlag = "startMenu";
          questionNum = 0;
          mistakeMessageFlag = 0;
      }
  
    }else{
      line(0,height/2,width,height/2);
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("ゲームクリア！！",width/2,height/2+50);
      chara.display();
      gameclearMenuButton.display();
      if(mousePressed == true && gameclearMenuButton.isInside()){
          sceneControlFlag = "startMenu";
          questionNum = 0;
          mistakeMessageFlag = 0;
      }
    }
  }
  
  void makingObjectsForReset(){
    input      = new InputForm(width/2,height/2+200);
    typing     = new TypingText(width/2,height/2+100);
    time       = new Timer();
    chara      = new Charactor(7);
    afterinput = new AfterInput();
  }
      
}
