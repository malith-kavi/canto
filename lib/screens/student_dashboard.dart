import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
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
                        onTap: (){},
                      ),

                      CustomCard(
                        icon: Icons.generating_tokens_rounded, 
                        text: 'Tokens', 
                        onTap: (){},
                      ),

                      CustomCard(
                        icon: Icons.shopping_cart_checkout_rounded, 
                        text: 'Cart', 
                        onTap: (){},
                      ),

                      CustomCard(
                        icon: Icons.notifications_active_rounded, 
                        text: 'Notifications', 
                        onTap: (){},
                      ),

                      CustomCard(
                        icon: Icons.manage_accounts_rounded, 
                        text: 'Profile', 
                        onTap: (){},
                      ),
                      
                      CustomCard(
                        icon: Icons.settings, 
                        text: 'Settings', 
                        onTap: (){},
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