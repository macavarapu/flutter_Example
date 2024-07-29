import 'package:bhoomi_app/components/button_components.dart';
import 'package:bhoomi_app/constants/string_constants.dart';
import 'package:bhoomi_app/widgets/login_screen/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/textinput_fromfield.dart';
import '../../constants/app_colors.dart';
import '../../widgets/wellcome_image_widget.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _pnonenumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wellcomeimagewidget(
                textColor: AppColors.background,
                textColor1: AppColors.background,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Textwidget(
                    text: StringConstants.enteryournumber,
                  ),
                  Textinputfield(
                    controller: _pnonenumberController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return StringConstants.pleaseEnterYourMobileNumber;
                      } else if (RegExp(
                              '^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}\$')
                          .hasMatch(value)) {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Textwidget(
                    text: StringConstants.password,
                  ),
                  Textinputfield(
                    controller: _passwordController,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Textwidget(
                      text: StringConstants.forgetpassword,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              AppButtonWidget(
                title: StringConstants.login,
                width: 400,
                titleColor: AppColors.white,
                buttonBackgroundColor: AppColors.background,
                buttonBorderColor: AppColors.background,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "register");
                },
                child: Textwidget(
                  text: StringConstants.donthave,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
