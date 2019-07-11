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
    if(answers[0] == 1){
      stroke(0);
      noFill();
      strokeWeight(3);
      ellipse(width/2, height/4, 300, 300);
      strokeWeight(1);
    }
    
    if(answers[1] == 1){
      ellipse(width/2, height/4 + 30, 100, 100);
    }
    
    if(answers[2] == 1){
      fill(0);
      noStroke();
      ellipse(width/2-50, 150, 25, 45);
      ellipse(width/2+50, 150, 25, 45);
      noFill();
      stroke(0);
    }
    
    if(answers[3] == 1){
      stroke(0);
      //bezier(600, 200, 650, 150, 700, 350, 600, 300);
      arc(width/2-50, 150, 70, 140, PI, 2*PI);
      arc(width/2+50, 150, 70, 140, PI, 2*PI);
    }
    
    if(answers[4] == 1){
      arc(width/2-100, height/4 + 30, 100, 100, -PI / 2 - 0.2, PI / 2 - 0.2);
      arc(width/2+100, height/4 + 30, 100, 100, PI / 2 + 0.2, 3 * PI / 2 + 0.2);
    }
    
    if(answers[5] == 1){
      strokeWeight(2);
      arc(width/2, height/4, 200, 200, radians(45), radians(135));
      strokeWeight(1);
    }
    
    if(answers[6] == 1){
      //color?
    }
  }
}
