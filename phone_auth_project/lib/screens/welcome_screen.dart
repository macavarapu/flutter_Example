import 'package:flutter/material.dart';
import 'package:phone_auth_project/widgets/custom_button.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/1.jpg",
                  height: 360,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Let's get started",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ), SizedBox(
                  height: 10,
                ),
                Text(
                  "Never a better time then now  to start",
                  style: TextStyle(fontSize: 15,
                  color: Colors.black38,
                   fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30,),
                AppButtonWidget(
                  title: "Get Started", 
                  titleColor: Colors.white,
                   buttonBackgroundColor: Colors.purple, 
                   buttonBorderColor: Colors.purple,
                    onPressed: (){
                      Navigator.pushNamed(context, "/register");
                    }
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
