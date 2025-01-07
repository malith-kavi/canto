import 'package:canto/screens/routes_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

var logo = 'assets/images/logo.png';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateToNextPage() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => RoutesScreen(),
        ),
      );
    }

    Future.delayed(const Duration(seconds: 2), navigateToNextPage);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  logo,
                  width: 250,
                  height: 250,
                ),
                
              ),
              const SpinKitChasingDots(
                  color: Colors.black,
                  size: 40,
                )
            ],
          ),
        ),
      ),
    );
  }
}