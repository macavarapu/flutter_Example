class Addition {
  int num1;
  int num2;
  int num3;
  Function? callback;
   Addition (this.num1,this.num2,{this.num3=4, this.callback});
   void doOperation(){
    int result;
    result=num1+num2+num3;
    if(callback!=null){
      callback!(result);
    }
    print("doOperation$result");
   }
}
void main(){
  //type1:- only mandatory parameter
Addition (4,8).doOperation();
//type2:- mandatory parameter and optional parameter
Addition(4,8,num3: 9).doOperation();
//type3:- mandatory paramater one optional parameter and one function parameter
Addition(4,5,num3: 2,callback: (int res)=>print("anonymous method result is:$res")).doOperation();
// type 4:-mandatory paramater , optional parameter and  function parameter(different order)
Addition(3,num3: 4,6,callback: (int res)=>print("anonymous method result is:$res")).doOperation();
}