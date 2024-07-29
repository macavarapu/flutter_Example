class Addition{
  int num1;
  int num2;
  int num3;
  Function?callback;
  Addition(this.num1,this.num2,{this.num3=8,this.callback});
  void doOperation(){
    int result;
    result=num1+num2+num3;
    if(callback!=null){
      callback!(result);
    }
    print("doOperation result is:$result");
  }
}
void main(){
  //type1
  Addition(5,3).doOperation();
  //type2
  Addition(5, 3,num3: 3).doOperation();
  //type3
  Addition(6, 8,callback: (int val){
    int mul=10;
    int res=val*mul;
    print("Anonymous method result is :$res");

  },
  num3: 2).doOperation();
  //type 4
  Addition(3, num3: 2,callback: (int val){
    int mul=10;
    int res=val*mul;
    print("anonymous method result is:$res");

  },
 8 ).doOperation();
  
}