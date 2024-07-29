import 'package:flutter/material.dart';
import 'package:ladies_onile_shiping_project/common/constants/app_colors.dart';
import 'package:ladies_onile_shiping_project/common/constants/images_constants.dart';
import 'package:ladies_onile_shiping_project/common/constants/string_constants.dart';
import 'package:ladies_onile_shiping_project/common/constants/text_styles.dart';
import 'package:ladies_onile_shiping_project/widgets/button.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // SvgPicture.asset(ImageConstants.welcome),
          Image.asset(
            ImageConstants.welcome1,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 300,),
              Text(
                StringConstants.welcometoGemStore,
                style:
                    TextStyles.title(fontSize: 20, textColor: AppColors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(StringConstants.hehomeforafashionista,
                  style: TextStyles.title(
                      fontSize: 15, textColor: AppColors.white)),
                      SizedBox(height: 100,),
              AppButtonWidget(
                width: 200,
                height: 50,
                  title: "",
                  titleColor: AppColors.white,
                  buttonBackgroundColor: Colors.white54,
                  buttonBorderColor: AppColors.white,
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
