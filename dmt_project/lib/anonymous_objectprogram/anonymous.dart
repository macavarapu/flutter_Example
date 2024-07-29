class Addition{
  int num1;
  int num2;
  Addition(this.num1,this.num2);
  int doOperation(){
   return(num1+num2);
  }
}
class Multiplication{
  int num1;
  int num2;
  Multiplication(this.num1,this.num2);
  int doOperation(){
    return(num1*num2);
  }
}
class Subtraction{
  int num1;
  int num2;
  Subtraction(this.num1,this.num2);
  int doOperation(){
    return(num1-num2);
  }
}
class Division{
  int num1;
  int num2;
  Division(this.num1,this.num2);
  double doOperation(){
    return(num1/num2);
  }
}
void main(){
  // Addition add=Addition(3,4);
//   int addResult=Addition(3,4).doOperation();
//   print("$addResult");
   // Multiplication multObject=Multiplication(Addition(3,4).doOperation(),5);
//    int multresult= Multiplication(Addition(3,4).doOperation(),5). doOperation();
//   print("$multresult");
  //Subtraction subObject=Subtraction(Multiplication(Addition(3,4).doOperation(),5). doOperation(),6);
//   int subResult=Subtraction(Multiplication(Addition(3,4).doOperation(),5). doOperation(),6).doOperation();
//   print("$subResult");
   //Division divObject= Division(Subtraction(Multiplication(Addition(3,4).doOperation(),5). doOperation(),6).doOperation(),7);
 // double divResult=Division(Subtraction(Multiplication(Addition(3,4).doOperation(),5). doOperation(),6).doOperation(),7).doOperation();
  print("${Division(Subtraction(
    Multiplication(
      Addition(3,4).doOperation(
      ),5). doOperation(
    ),6).doOperation(
  
  ),7).doOperation()}");

}