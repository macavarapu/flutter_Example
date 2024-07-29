class Animal{
  var name;
  void eat(){
    print("I can eat");
  }
}
class Dog extends Animal{
  void disply(){
    print("My name is:$name");
  }
}
void main(){
  Dog dog=Dog();
  dog.name="Ask1";
  dog.disply();
  dog.eat();
}