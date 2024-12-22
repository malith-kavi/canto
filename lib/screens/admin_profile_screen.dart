import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';

var profilePicture = 'assets/images/rice.png';

class AdminProfileScreen extends StatelessWidget {
  const AdminProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){},
        ),
        title: Text('Profile',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        
      backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),  
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                      IconButton(
                        icon: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 0, 0, 0),
                              width: 2,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset(
                              profilePicture,
                              width: 110,
                              height: 110,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(height: 30,),
                      ProfileField(
                        icon: Icons.person, 
                        text: 'Uditha Thathsara',
                      ),
                      SizedBox(height: 15,),
                      ProfileField(
                      icon: Icons.email,
                      text: 'thathsara23@gmail.com',
                      ),
                      const SizedBox(height: 15),
                      ProfileField(
                      icon: Icons.phone,
                      text: '+94 71 536 9370',
                      ),
                      const SizedBox(height: 15),
                      ProfileField(
                      icon: Icons.lock,
                      text: '**************',
                      trailingIcon: Icons.visibility_off,
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),

              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton2(text: 'Edit Details', onPressed: (){}),
                        ],
                      ),
                      Spacer(),
                  ],
                ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}