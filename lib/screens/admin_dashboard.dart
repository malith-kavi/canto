import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:canto/screens/admin_canteen_staff.dart';
import 'package:canto/screens/admin_profile_screen.dart';
import 'package:canto/screens/admin_settings_screen.dart';
import 'package:canto/screens/admin_student.dart';
import 'package:canto/screens/canteen_message.dart';
import 'package:canto/screens/feedback_screen.dart';
import 'package:canto/screens/student_menu.dart';
import 'package:canto/screens/student_profile.dart';
import 'package:flutter/material.dart';

var adbackground = 'assets/images/adBackground.png';


class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Column(
        children: [
            Expanded(
              flex: 9,
              child:
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight: Radius.circular(70.0),
                    ),
                  ),
                  clipBehavior:Clip.antiAlias,
                  child:Stack(
                    children: [
                      Image.asset(
                        adbackground,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20,),
                              child: Text('Dashboard',
                              style: HeaderText1,),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          
          Expanded(
            flex: 15,
            child:Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child:Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1,
                    children: [
                      CustomCard(
                        icon: Icons.book_rounded, 
                        text: 'Menu', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentMenu()));
                        },
                      ),

                      CustomCard(
                        icon: Icons.generating_tokens_rounded, 
                        text: 'Tokens', 
                        onTap: (){
                          
                        },
                      ),

                      CustomCard(
                        icon: Icons.message, 
                        text: 'Message', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CanteenMessageScreen()));
                        },
                      ),

                      CustomCard(
                        icon: Icons.feedback, 
                        text: 'Feedback', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> FeedbackScreen()));
                        },
                      ),

                      CustomCard(
                        icon: Icons.school_rounded, 
                        text: 'Students', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminStudent()));
                        },
                      ),
                      
                      CustomCard(
                        icon: Icons.food_bank_rounded, 
                        text: 'Canteen Staff', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminCanteenStaff()));
                        },
                      ),

                      CustomCard(
                        icon: Icons.manage_accounts_rounded, 
                        text: 'Profile', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminProfileScreen()));
                        },
                      ),
                      
                      CustomCard(
                        icon: Icons.settings, 
                        text: 'Settings', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminSettingsScreen()));
                        },
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