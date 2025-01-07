import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:canto/screens/canteen_menu.dart';
import 'package:canto/screens/canteen_message.dart';
import 'package:canto/screens/canteen_profile.dart';
import 'package:canto/screens/canteen_settings.dart';
import 'package:canto/screens/feedback_screen.dart';
import 'package:flutter/material.dart';

var ctbackground = 'assets/images/ctBackground.png';


class CanteenDashboard extends StatelessWidget {
  const CanteenDashboard({super.key});

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
                        ctbackground,
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
                              padding: const EdgeInsets.only(bottom: 100,left: 120),
                              child: Text('Dashboard',
                              style: HeaderText4,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CanteenMenu()));
                        },
                      ),

                      CustomCard(
                        icon: Icons.generating_tokens_rounded, 
                        text: 'Tokens', 
                        onTap: (){},
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
                        icon: Icons.manage_accounts_rounded, 
                        text: 'Profile', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CanteenProfile()));
                        },
                      ),
                      
                      CustomCard(
                        icon: Icons.settings, 
                        text: 'Settings', 
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CanteenSettingsScreen()));
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