import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();
  Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login screen"),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
         
          children: [
            SizedBox(
              width: 350,
              child: TextFormField(
                controller: _userEmailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "please enter your email",
                  labelText: " enter vaild Email",
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            SizedBox(
              width: 350,
              child: TextFormField(
                controller: _userPasswordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "please enter your password",
                  labelText: " enter vaild password",
                  
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
            ),

            SizedBox(
              height: 10,
            ),
          SizedBox(
            width: 400,
            child: const  Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_box),
                          Text("Rembber me"),
                        ],
                      ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("forgot password?"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
          ),
          
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    primary: Color.fromRGBO(0, 0, 0, 1)),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(
                    text: "Not registered?",
                    style: TextStyle(color: Colors.black),
                    children: [
                  TextSpan(
                      text: " create in  Sign up",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        //fontWeight: FontWeight.bold
                      ))
                ])),
          ],
        ),
      ),
    );
  }
}
