class SceneManager{
  
  TypingText typing;  
  InputForm  input;
  Timer      time;
  
  JudgeAnswer judge = new JudgeAnswer();
  
  Button startMenuButton     = new Button(width/2,height * 2/3,200,40,"スタート");
  Button gameclearMenuButton = new Button(width/2,height/2+100,200,40,"スタート画面に戻る");
  Button easingButton        = new Button(width/2,height/2+100,240,40,"難易度を下げてリトライ");
  Button retryButton         = new Button(width/2,height/2+150,240,40,"リトライ");
  Button toTitleButton       = new Button(width/2,height/2+200,240,40,"スタート画面に戻る");
  Charactor chara            = new Charactor(7);
  
  //flag to control scene 
  String sceneControlFlag = "startMenu";
  
  //setup the default question number
  int questionNum = 0;
  
  //setup the time limits
  int timeLimits = 20;

  //function to display scenes
  void playScene(){
    
    if(sceneControlFlag == "startMenu"){
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("描き歌タイピング",width/2,height/3);
      startMenuButton.display();
      if(mousePressed == true && startMenuButton.isInside()){
        sceneControlFlag = "gameMenu";
        makingObjectsForReset();
        //you can change default time 
        time.changeTime(timeLimits);
      }
      
    }else if(sceneControlFlag == "gameMenu"){
      line(0,height/2,width,height/2);
      time.display();
      time.updateTime();
      chara.display();
      
      //display inputform
      input.display();
      //display question
      typing.display(questionNum);
      
      //if inputtext are equal with question, add 1 to qustion number
      if(judge.isCorrect(input.label.text,typing.text[questionNum]) && questionNum < typing.text.length){
        //update answer[]
        chara.answers[questionNum] = 1;
        
        //reset input text
        input.label.text = "";
        
        questionNum += 1;
        if(questionNum == typing.text.length){
          sceneControlFlag = "gameclearMenu";
        }
      }
      
      if(time.isTimeUp()) sceneControlFlag = "gameoverMenu";
    }else if(sceneControlFlag == "gameoverMenu"){
      //make game over menu here
      
      line(0,height/2,width,height/2);
      fill(0);
      textSize(50);
      textAlign(CENTER);
      text("ゲームオーバー",width/2,height/2+50);
      easingButton.display();
      if(mousePressed == true && easingButton.isInside()){
        // ease the difficulty (not done yet)
        
          sceneControlFlag = "gameMenu";
          makingObjectsForReset();
          //you can change default time 
          time.changeTime(timeLimits);
          questionNum = 0;
      }
      retryButton.display();
      if(mousePressed == true && retryButton.isInside()){
          sceneControlFlag = "gameMenu";
          makingObjectsForReset();
          //you can change default time 
          time.changeTime(timeLimits);
          questionNum = 0;
      }
      toTitleButton.display();
      if(mousePressed == true && toTitleButton.isInside()){
          sceneControlFlag = "startMenu";
          questionNum = 0;
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
      }
    }
  }
  
  void makingObjectsForReset(){
    input = new InputForm(width/2,height/2+200);
    typing = new TypingText(width/2,height/2+100);
    time = new Timer();
  }
      
}
