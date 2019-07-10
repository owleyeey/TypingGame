//正誤判定のためのクラス

//**************************************//
//*         メソッドの説明               *//
//* -----------------------------------*//
//*isCorrect　２つの文字列が同じか判定     //
//**************************************//

class JudgeAnswer{
  Boolean isCorrect(String inputword,String question){
    println(inputword,question);
    if(inputword.equals(question)){
      return true;
    }
    return false;
  }
}
