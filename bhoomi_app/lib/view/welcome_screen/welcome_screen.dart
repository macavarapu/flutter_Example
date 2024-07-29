
import 'package:bhoomi_app/constants/app_colors.dart';
import 'package:bhoomi_app/view/language_screen/language_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/image_constants.dart';
import '../../constants/routes_constants.dart';
import '../../constants/string_constants.dart';
import '../../widgets/wellcome_image_widget.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
    @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10), () async {
      await Navigator.pushNamedAndRemoveUntil(
              context, RouteList.language, (route) => false);
           Navigator.of(context).push(
              MaterialPageRoute(builder: (Contex) => Languagescreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wellcomeimagewidget(textColor: AppColors.white, textColor1: AppColors.white,),
       
          ],
        ),
      ),
    );
  }
}
