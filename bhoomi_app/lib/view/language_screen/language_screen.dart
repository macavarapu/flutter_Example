import 'package:bhoomi_app/constants/app_colors.dart';
import 'package:bhoomi_app/constants/string_constants.dart';
import 'package:bhoomi_app/widgets/language_screen_widget/language_continer_widget.dart';
import 'package:bhoomi_app/widgets/wellcome_image_widget.dart';
import 'package:flutter/material.dart';

class Languagescreen extends StatefulWidget {
  const Languagescreen({super.key});

  @override
  State<Languagescreen> createState() => _LanguagescreenState();
}

class _LanguagescreenState extends State<Languagescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Wellcomeimagewidget(
              textColor: AppColors.background,
              textColor1: AppColors.background,
            ),
            SizedBox(height: 50),
            Text(
              StringConstants.language,
              style: TextStyle(fontSize: 32, color: AppColors.back),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                StringConstants.hindhi,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.back),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          Continerwidget(title:StringConstants.English, onTap: (){
            Navigator.pushNamed(context, "/login");
          },),
          SizedBox(height: 40,),
          Continerwidget(title: StringConstants.hindhitext,onTap: (){},),
          ],
        ),
      ),
    );
  }
}
