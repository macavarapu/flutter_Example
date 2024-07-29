import 'package:flutter/material.dart';

class AppButtonWidget extends StatelessWidget {
  AppButtonWidget(
      {Key? key,
      required this.title,
      required this.titleColor,
      required this.buttonBackgroundColor,
      required this.buttonBorderColor,
      required this.onPressed, this.width})
      : super(key: key);
  final String title;
  final Color titleColor;
  final Color buttonBackgroundColor;
  final Color buttonBorderColor;
   final double? width;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed:onPressed,
        child: Container(
          width: width,
          height: 55,
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700, color: titleColor),
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: buttonBorderColor),
            borderRadius: BorderRadius.circular(10),
            color: buttonBackgroundColor,
          ),
        ),
      ),
    );
  }
}
