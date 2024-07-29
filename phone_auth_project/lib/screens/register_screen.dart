import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/custom_button.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  TextEditingController _phoneNumberController=TextEditingController();
  Country Slectedcountry=Country(
    phoneCode: "91",
   countryCode: "IN",
    e164Sc: 0,
     geographic: true,
    level: 1,
    name: "India",
     example: "India",
      displayName: "India",
          displayNameNoCountryCode: "IN",
           e164Key: "",
           );
  @override
  Widget build(BuildContext context) {
    _phoneNumberController.selection=TextSelection.fromPosition(
      TextPosition(offset: _phoneNumberController.text.length),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
          child: Padding(padding: EdgeInsets.symmetric(vertical: 25,horizontal: 30),
          child: Column(
             children: [
              Container(
                height: 200,
                width: 200,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple.shade50
                ),
                child: Image.asset("assets/2.png"),
                
              ),
                SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Register",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ), SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Add your ohone number. We'll send your verfication code",
                    style: TextStyle(fontSize: 15,
                    color: Colors.black38,
                     fontWeight: FontWeight.bold,
      
                     ),
                     textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    cursorColor: Colors.purple,
                     controller: _phoneNumberController,
                     style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                     onChanged: (valu){
                      setState(() {
                        _phoneNumberController.text=valu;
                      });
                     },
                     decoration: InputDecoration(
                      
                      hintText: "Enter Phone Numer",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: (){
                           showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                             bottomSheetHeight: 500,
                            ),
                             onSelect: (valu){
                              setState(() {
                                Slectedcountry=valu;
                              });
                             }
                             );
                          },
                          child: Text("${Slectedcountry.flagEmoji}+${Slectedcountry.phoneCode}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                        ),
                        
                      ),
                      suffixIcon:
                       _phoneNumberController.text.length>9
                      ?Container(
                        height: 30,
                        width: 30,
                       margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         color: Colors.green,
                          
                        ),
                        child: Icon(Icons.done,size: 20,color: Colors.white,),
                      ):null
                     ),
                     
                     
                  ),
                  SizedBox(height: 40,),
                    AppButtonWidget(
                    title: "Login", 
                    titleColor: Colors.white,
                     buttonBackgroundColor: Colors.purple, 
                     buttonBorderColor: Colors.purple,
                      onPressed: (){
                       // Navigator.pushNamed(context, "/register");
                      }
                      ),
                ],
                  
             
          ),
          ),
        )),
      ),
    );
  }
}