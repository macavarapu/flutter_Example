import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/image_constants.dart';
import '../constants/string_constants.dart';

class Wellcomeimagewidget extends StatelessWidget {
  final Color textColor;
  final Color textColor1;
  const Wellcomeimagewidget({super.key, required this.textColor, required this.textColor1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          StringConstants.bh,
          style: TextStyle(
            color:textColor,
            // AppColors.white,
            fontSize: 64,
            fontWeight: FontWeight.w200,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom:40 ),
          child: Image.asset(
            ImageConstants.logo,
            height: 250,
           width: MediaQuery.of(context).size.width * 0.2,
          ),
        ),
        Text(
          StringConstants.mi,
          style: TextStyle(
            color:textColor1,
            // AppColors.white,
            fontSize: 64,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
