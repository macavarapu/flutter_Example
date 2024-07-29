import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/string_constants.dart';

class Continerwidget extends StatelessWidget {
  final String title;
    final Function()? onTap;
  const Continerwidget({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 400,
      child: Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          child: InkWell(
            onTap:onTap ,
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: Colors.green,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: AppColors.background,
                  width: 2.0,
                ),
              ),
              child: Center(
                  child: Text(
                              title,
                              // StringConstants.English,
                              style: TextStyle(color: AppColors.back),
                            )),
            ),
          )),
    );
  }
}
