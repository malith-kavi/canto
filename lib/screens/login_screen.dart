import 'dart:math';
import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';

var logo = 'assets/images/logo.png';
var google = 'assets/images/google.png';
var facebook = 'assets/images/facebook.png';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bColor,
      body: Column(
        children: [
          SafeArea(
            child: Expanded(
              flex: 8,
              child: Container(
                decoration: const BoxDecoration(
                  color: bColor,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Image.asset(
                          logo,
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(43, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 18,
            child:Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
              ),
              child:Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back',
                        style: HeaderText2,
                      ),
                      SizedBox(height: 15,),
                      Text('Enter your details here.',
                      style: BodyText3,),
                      SizedBox(height: 15,),
                      
                      CustomTextInput(hintText: 'Email Address'),
                      SizedBox(height: 15,),
                      CustomTextInput(hintText: 'Password'),
                      Spacer(),
                      CustomButton(text: 'Login', onPressed: (){}),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          
                          Expanded(
                            child: Divider(
                              color: Colors.black54, 
                              thickness: 1.5, 
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Or Login with',
                              style: BodyText2
                            ),
                          ),
                          
                          Expanded(
                            child: Divider(
                              color: Colors.black54, 
                              thickness: 1.5,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          IconButton(
                            icon: Image.asset(
                              facebook,
                              height: 50,
                              width: 50,
                            ),
                            onPressed: () {},
                          ),
                          Spacer(),
                          IconButton(
                            icon: Image.asset(
                              google,
                              height: 50,
                              width: 50,
                            ),
                            onPressed: () {},
                          ),
                          Spacer(),
                        ],
                      ),

                    ],
                  ),
                ),
            ),
            ),
          ),
        ],
      ),
    );
  }
}