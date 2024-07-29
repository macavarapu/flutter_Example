import 'package:bhoomi_app/components/textinput_fromfield.dart';
import 'package:flutter/material.dart';

import '../../components/button_components.dart';
import '../../constants/app_colors.dart';
import '../../constants/string_constants.dart';
import '../../widgets/login_screen/text_widget.dart';
import '../../widgets/wellcome_image_widget.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
               Wellcomeimagewidget(
                    textColor: AppColors.background,
                    textColor1: AppColors.background,
                  ),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Textwidget(
                   text: StringConstants.fullname,
                    ),
                    Textinputfield(),
                   SizedBox(height: 10,),
                   Textwidget(
                   text: StringConstants.phonenumber,
                    ),
                    Textinputfield(),
                    SizedBox(height: 10,),
                  Textwidget(
                   text: StringConstants.password,
                    ),
                    Textinputfield(),
                    SizedBox(height: 10,),
                  Textwidget(
                   text: StringConstants.Confirmpassword,
                    ),
                    Textinputfield(),
                    SizedBox(height: 30,),
                  AppButtonWidget(
                  title: StringConstants.register,
                  width: 400,
                  titleColor: AppColors.white,
                  buttonBackgroundColor: AppColors.background,
                  buttonBorderColor: AppColors.background,
                  onPressed: () {
                    //if (_formKey.currentState!.validate()) {}
                  },
                  ),
                   Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "login");
                    },
                    child: Textwidget(
                      text: StringConstants.allreadyanaccountlogin,
                    ),
                     ),
                   ),
                   SizedBox(height: 30,),
                    ],
                  ),
                  
            ],
          ),
        ),
      ),
    );
  }
  
}




