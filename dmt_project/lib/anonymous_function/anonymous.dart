void main(){
  var fruits = ["Apple", "Mango", "Banana", "Kiwi"];
   fruits.forEach((item) {
      print('${fruits.indexOf(item)}: $item');
   });
}