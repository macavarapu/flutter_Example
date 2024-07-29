 void main(){
  
  Users  userone=Users("singam",8);
  
  print(userone.userName);
  print(userone.age);
  //userone.login();
  
  Users userTwo = Users("srinu",23);
   print(userTwo.userName);
  print(userTwo.age);
  
  
}

  class Users{
  
  String? userName ;
  int? age ;
  
    Users(String userName,int age ){
   
       this.userName= userName;
    
       this.age = age;
      
    
   }
  }