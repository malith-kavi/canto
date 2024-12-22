import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';



class AdminCanteenStaff extends StatelessWidget {
  const AdminCanteenStaff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){},
        ),
        title: const Text(
          'Canteen Staff',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
        ),
      backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  AdminCard(name: 'Uditha Thathsara'),
                  SizedBox(height: 30,),
                  AdminCard(name: 'Uditha Thathsara'),
                  SizedBox(height: 30,),
                  AdminCard(name: 'Uditha Thathsara'),
                  SizedBox(height: 30,),
                  AdminCard(name: 'Uditha Thathsara'),
                  
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}