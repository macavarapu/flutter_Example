// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import '../constants/app_colors.dart';

// class Inputtextfromfield extends StatelessWidget {
//   final TextEditingController? controller;
//   final String? hintText;
//   final double? width;
//   final TextStyle? hintstyle;
//   final Widget? prefixIcon;
//   final bool? obsecureText;
//   final Widget? suffixIcon;
//   final TextInputType? keyboardType;
//   final Function(String value)? onChange;
//   final EdgeInsetsGeometry? contentPadding;
//   final TextAlign? textAlign;
//   final Color? fillcolor;
//   final bool? isfilled;
//   final int? maxLines;
//   final int? maxLength;
//   final String? label;
//   final OutlineInputBorder? border;
//   final String? Function(String?)? validator;
//   final List<TextInputFormatter>? inputFormatters;
//   final double? borderRadius;
//   final TextStyle? labelstyle;
//   final Function()? onTap;
//   final TextInputAction? textInputAction;
//   final Function(String?)? onSubmitted;
//   final Color? titleColor;
//   final Color? borderColor;
//   final FocusNode? focusNode;

//   const Inputtextfromfield(
//       {super.key,
//       this.controller,
//       this.hintText,
//       this.width,
//       this.hintstyle,
//       this.prefixIcon,
//       this.obsecureText,
//       this.suffixIcon,
//       this.keyboardType,
//       this.onChange,
//       this.contentPadding,
//       this.textAlign,
//       this.fillcolor,
//       this.isfilled,
//       this.maxLines,
//       this.maxLength,
//       this.label,
//       this.border,
//       this.validator,
//       this.inputFormatters,
//       this.borderRadius,
//       this.labelstyle,
//       this.onTap,
//       this.textInputAction,
//       this.onSubmitted,
//       this.titleColor,
//       this.borderColor,
//       this.focusNode});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//           const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
//           child: TextFormField(
//             decoration: InputDecoration(
//               hintText: hintText,
//               labelText: label,
//             ),
//           ),
//       // child: Container(
//       //   height: 70,
//       //   width: double.infinity,
//       //   decoration: BoxDecoration(

//       //     // color: Colors.green,
//       //     borderRadius: BorderRadius.circular(25),

//       //     border: Border.all(
//       //       color: AppColors.background,
//       //       width: 2.0,
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class Inputtextfield extends StatelessWidget {
//   final TextEditingController? controller;
//   final String? hintText;
//   final double? width;
//   final TextStyle? hintstyle;
//   final Widget? prefixIcon;
//   final bool? obsecureText;
//   final Widget? suffixIcon;
//   final TextInputType? keyboardType;
//   final Function(String value)? onChange;
//   final EdgeInsetsGeometry? contentPadding;
//   final TextAlign? textAlign;
//   final Color? fillcolor;
//   final bool? isfilled;
//   final int? maxLines;
//   final int? maxLength;
//   final String? label;
//   final OutlineInputBorder? border;
//   final String? Function(String?)? validator;
//   final List<TextInputFormatter>? inputFormatters;
//   final double? borderRadius;
//   final TextStyle? labelstyle;
//   final InputBorder? enableborder;
//   final Color? titleColor;
//   final Color? enableBorderColor;
//   final Color? borderColor;
//   final FocusNode? focusNode;
//   final bool? readOnly;
//   final bool? canRequestFocus;
//   final String? initialValue;
//   final Function()? onTap;
//   final Function(String?)? onSubmitted;
//   final TextInputAction? textInputAction;

//   Inputtextfield({
//     Key? key,
//     this.controller,
//     this.hintText,
//     this.width,
//     this.hintstyle,
//     this.prefixIcon,
//      this.obsecureText,
//     this.suffixIcon,
//     this.keyboardType,
//     this.onChange,
//     this.contentPadding,
//     this.textAlign,
//     this.fillcolor,
//     this.isfilled,
//     this.maxLines,
//     this.maxLength,
//     this.label,
//     this.border,
//     this.validator,
//     this.inputFormatters,
//     this.borderRadius,
//     this.labelstyle,
//     this.enableborder,
//     this.titleColor,
//     this.enableBorderColor,
//     this.borderColor,
//     this.focusNode,
//     this.readOnly,
//     this.canRequestFocus,
//     this.initialValue,
//     this.onTap,
//     this.onSubmitted,
//     this.textInputAction,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFormField(
//           //obscureText: false,
//           controller: controller,
//           decoration: InputDecoration(
//             prefixIcon: prefixIcon,
//             hintText: hintText,

//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),

//             ),
//           ),
//           keyboardType: keyboardType,
//           validator: validator,
//         ),
//       ],
//     );
//   }
// }
import 'package:bhoomi_app/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Textinputfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final double? width;
  final TextStyle? hintstyle;
  final Widget? prefixIcon;
  final bool? obsecureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Function(String value)? onChange;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign? textAlign;
  final Color? fillcolor;
  final bool? isfilled;
  final int? maxLines;
  final int? maxLength;
  final String? label;
  final OutlineInputBorder? border;

  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final double? borderRadius;
  final TextStyle? labelstyle;
  final Function()? onTap;
  final TextInputAction? textInputAction;
  final Function(String?)? onSubmitted;
  final Color? titleColor;
  final Color? borderColor;
  final FocusNode? focusNode;
  Textinputfield({
    Key? key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.validator,
    // required Color color,
    this.width,
    this.hintstyle,
    this.prefixIcon,
    this.obsecureText,
    this.suffixIcon,
    this.onChange,
    this.contentPadding,
    this.textAlign,
    this.fillcolor,
    this.isfilled,
    this.maxLines,
    this.maxLength,
    this.label,
    this.border,
    this.inputFormatters,
    this.borderRadius,
    this.labelstyle,
    this.onTap,
    this.textInputAction,
    this.onSubmitted,
    this.titleColor,
    this.borderColor,
    this.focusNode,  
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
      child: Column(
        children: [
          TextFormField(
            obscureText: false,
            controller: controller,
            
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
             // fillColor: AppColors.background,
              hintText: hintText,
               
              border: OutlineInputBorder(
                
                borderRadius: BorderRadius.circular(30),
              
              ),
                focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(width: 3, color:AppColors.background),
                 borderRadius: BorderRadius.circular(30),
      ),
      
             
            ),
            keyboardType: keyboardType,
            validator: validator,
          ),
        ],
      ),
    );
  }
}
