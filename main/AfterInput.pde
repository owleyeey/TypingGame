class AfterInput{
  String input,question;
  
  void afterInputProcess(){
    if(scene.judge.isCorrect(scene.input.getText(),scene.typing.text[scene.questionNum])){
      //update answer[]
      scene.chara.answers[scene.questionNum] = 1;
      //reset input text
      scene.input.resetText();
        
      scene.questionNum += 1;
        
      scene.time.changeTime(scene.timeLimits);
        
      if(scene.questionNum == scene.typing.getTextLength()){
        scene.sceneControlFlag = "gameclearMenu";
      }
    }else{
      scene.textColor = color(255,0,0);
      scene.input.resetText();
      scene.textColor = color(0);
    }
    
  }
}
