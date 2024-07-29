import 'reg_exp.dart';

mixin ValidationMixins {
  String? validateFirstName(value) {
    if (value!.isEmpty) {
      return "Please enter your name";
    }
    return null;
  }

  String? validateLastName(value) {
    if (value!.isEmpty) {
      return "";
    }
    return null;
  }

  String? validatePhoneNumber(value) {
    if (value!.isEmpty) {
      String errortext = "Please enter your Mobile Number";
      return errortext;
    } else if (!phonenovalid(value)) {
      String errortext = 'Enter vaild  mobile number';
      return errortext;
    }

    return null;
  }

  String? validateemail(value) {
    if (value!.isEmpty) {
      return "Please enter your email";
    } else if (!checkEmailValidation(value)) {
      return 'Enter vaild email';
    }
    return null;
  }

  String? isValidAadharNumber(value) {
    if (value!.isEmpty) {
      String errortext = "Please enter your Aadhar Number";
      return errortext;
    } else if (!phonenovalid(value)) {
      String errortext = 'Enter vaild  aadhar number';
      return errortext;
    }
    return null;
  }

  String? isvalidNumberOfWords(value) {
    if (value!.isEmpty) {
      return "please enter text";
    } else if (!validNumberOfWords(value)) {
      String errortext = 'Enter only 20 words';
      return errortext;
    }
    return null;
  }

  String? validateDateOfBirth(value) {
    if (value!.isEmpty) {
      return "Please enter your Date of Birth";
    }
    return null;
  }

  String? validateAddress(value) {
    if (value!.isEmpty) {
      return "Please enter your Address";
    }
    return null;
  }
}
