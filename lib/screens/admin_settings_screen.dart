import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';



class AdminSettingsScreen extends StatelessWidget {
  const AdminSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){},
        ),
        title: const Text(
          'Settings',
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
                  SettingsCard(name: 'Notifications', icon: Icons.notifications_active_rounded, onTap: (){},),
                  SizedBox(height: 10,),
                  SettingsCard(name: 'Account', icon: Icons.person, onTap: (){}),
                  SizedBox(height: 10,),
                  SettingsCard(name: 'Privacy', icon: Icons.privacy_tip_outlined, onTap: (){}),
                  SizedBox(height: 10,),
                  SettingsCard(name: 'Help', icon: Icons.help, onTap: (){}),
                  SizedBox(height: 10,),
                  SettingsCard(name: 'About', icon: Icons.info_outline_rounded, onTap: (){}),
                  SizedBox(height: 10,),

                  Divider(
                      color: const Color.fromARGB(255, 255, 255, 255), 
                      thickness: 1,
                    ),

                  SettingsCard2(name: 'Add Account', icon: Icons.add, onTap: (){}),
                  SizedBox(height:5,),
                  SettingsCard2(name: 'Log Out', icon: Icons.logout, onTap: (){}),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}