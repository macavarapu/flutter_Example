bool checkEmailValidation(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

bool checkPasswordValidation(String password) {
  return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      .hasMatch(password);
}  

bool checkNumbervalidation(String numb) {
  return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(numb);
}
bool phonenovalid(String phoneno) {
    return RegExp('^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}\$')
        .hasMatch(phoneno);
  }
 bool namevalidation(String name) {
    return  RegExp('[a-zA-Z]')
        .hasMatch(name);
  } 
  bool isValidAadharNumber(String number) {
    return RegExp(
            r'^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}$')
        .hasMatch(number);
  }
   bool validNumberOfWords(String numberofwords) {
    return RegExp(r"\w+(\'\w+)?")
        .hasMatch(numberofwords);
  }