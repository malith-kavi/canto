import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:canto/screens/cart_screen.dart';
import 'package:canto/screens/notification_screen.dart';
import 'package:canto/screens/student_menu.dart';
import 'package:canto/screens/student_profile.dart';
import 'package:canto/screens/student_settings_screen.dart';
import 'package:canto/screens/student_tokens_screen.dart';
import 'package:flutter/material.dart';

var stbackground = 'assets/images/stBackground.png';


class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

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
                        stbackground,
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
                              padding: const EdgeInsets.only(bottom: 20),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentTokensScreen()));
                        },
                      ),

                      CustomCard(
                        icon: Icons.shopping_cart_checkout_rounded, 
                        text: 'Cart', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
                        },
                      ),

                      CustomCard(
                        icon: Icons.notifications_active_rounded, 
                        text: 'Notifications', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationScreen()));
                        },
                      ),

                      CustomCard(
                        icon: Icons.manage_accounts_rounded, 
                        text: 'Profile', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentProfile()));
                        },
                      ),
                      
                      CustomCard(
                        icon: Icons.settings, 
                        text: 'Settings', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentSettingsScreen()));
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