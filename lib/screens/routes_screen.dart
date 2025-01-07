import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:canto/screens/login_screen.dart';
import 'package:canto/screens/signup_screen.dart';
import 'package:flutter/material.dart';

var bgImage = 'assets/images/routes_bg.png';

class RoutesScreen extends StatelessWidget {
   const RoutesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                const Text('Welcome to\nCanteen Token ',
                style: HeaderText1,),
                const SizedBox(height: 20,),
                const Text('Log in to reserve meal tokens,\nview the menu, and manage reservations.',
                style: BodyText1,),
                const SizedBox(height: 20,),
                CustomButton(
                  text: 'Sign Up', 
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                  }),
                const SizedBox(height: 20,),
                CustomButton(
                  text: 'Login', 
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  }),
                const SizedBox(height: 25,),
              ],  
            ),
          ),
        ),
      ),
    );
  }
}