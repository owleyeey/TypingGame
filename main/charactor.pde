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
    //Draw face outline
    if(answers[0] == 1){
      stroke(0);
      if(answers[6] == 1){
        fill(250, 200, 150);
      } else {
        noFill();
      }
      strokeWeight(3);
      ellipse(width/2, height/4, 300, 300);
      strokeWeight(1);
    }
    
    //Draw nose
    if(answers[1] == 1){
      if(answers[6] == 1){
        fill(200, 0, 0);
        ellipse(width/2, height/4 + 30, 100, 100);
        noStroke();
        fill(255, 255, 255);
        rect(width/2-15, height/4+20, 20, 20);
      } else {
        noFill();
        ellipse(width/2, height/4 + 30, 100, 100);
      }
    }
      
    
    //Draw eyes
    if(answers[2] == 1){
      fill(0);
      noStroke();
      strokeWeight(2);
      ellipse(width/2-50, 150, 25, 45);
      ellipse(width/2+50, 150, 25, 45);
      noFill();
      stroke(0);
    }
    
    //Draw mayuge
    if(answers[3] == 1){
      stroke(0);
      arc(width/2-50, 150, 70, 140, PI, 2*PI);
      arc(width/2+50, 150, 70, 140, PI, 2*PI);
    }
    
    //Draw cheeck
    if(answers[4] == 1){
      if(answers[6] == 1){
        fill(250, 120, 10);
        noStroke();
        ellipse(width/2-100, height/4+30, 100, 100);
        ellipse(width/2+100, height/4+30, 100, 100);
        fill(255);
        rect(width/2-100, height/4+20, 20, 20);
        rect(width/2+100, height/4+20, 20, 20);
        stroke(0);
        noFill();
      }
      arc(width/2-100, height/4 + 30, 100, 100, -PI / 2 - 0.2, PI / 2 - 0.2);
      arc(width/2+100, height/4 + 30, 100, 100, PI / 2 + 0.2, 3 * PI / 2 + 0.2);
    }
    
    //Draw mouse
    if(answers[5] == 1){
      arc(width/2, height/4, 200, 200, radians(45), radians(135));
    }
      
    strokeWeight(1);
  }
}
