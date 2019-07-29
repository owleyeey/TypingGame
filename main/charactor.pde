/*******************************************
==parameter==
  int[] answer : answer[i] = 0 or 1  0 -> player couldnt answer 
                                     1 -> player could answer
==method==
  display() : Draw charactor parts player can input

********************************************/
class Charactor{
  int questionSize;
  public int[] answers;
  
  Charactor(int size){
    questionSize = size;
    answers = new int[questionSize];
    
    for(int i = 0; i < answers.length; i++){
      answers[i] = 0;
    }
  }
  
  void display(){
    
    //draw shape of body
    if(answers[0] == 1){
      noFill();
      stroke(0);
      ellipse(width/2, height/4+70, 150, 150);
    }
    
    //draw shape of face
    if(answers[1] == 1){
      fill(255);
      stroke(0);
      ellipse(width/2, height/4-70, 150, 150);
    }
        
    //Draw eyes
    if(answers[2] == 1){
      noStroke();
      fill(0);
      ellipse(width/2-30, height/7, 15, 30);
      ellipse(width/2+30, height/7, 15, 30);
    }
    
    //Draw nose
    if(answers[3] == 1){
      if(answers[5] == 1){
        fill(200, 120, 60);
        noStroke();
      }else{
        noFill();
        stroke(1);
      }
      rect(width/2+50, height/5-10, 100, 10);
    }
     
    //Draw buttons
    if(answers[4] == 1){
      if(answers[5] == 1){
        fill(200, 120, 60); 
      }else{
        noFill();
      }
      ellipse(width/2, height*2/7+10, 20, 20);
      ellipse(width/2, height*2/7+50, 20, 20);
    }
  }
}
