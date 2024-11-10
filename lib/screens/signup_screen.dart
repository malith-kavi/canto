import 'dart:math';
import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';

var logo = 'assets/images/logo.png';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bColor,
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              decoration: const BoxDecoration(
                color: bColor,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        logo,
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ],
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
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Get Started',
                        style: HeaderText2,
                      ),
                      SizedBox(height: 10,),
                      Text('Enter your details here.',
                      style: BodyText2,),
                      
                      CustomTextInput(hintText: 'hintText')                      

                      
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