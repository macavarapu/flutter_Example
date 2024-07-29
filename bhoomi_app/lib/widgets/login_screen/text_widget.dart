import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/string_constants.dart';

class Textwidget extends StatelessWidget {
  final String text;
  const Textwidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
      child: Text(
        text,
        // StringConstants.enteryournumber,
        style: TextStyle(
            fontSize: 20,
            color: AppColors.textColor,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
