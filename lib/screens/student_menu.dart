import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';

class StudentMenu extends StatelessWidget {
  const StudentMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Menu',
                  style: HeaderText2,),
              SizedBox(height: 10,),
              CustomSearchBar(),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Spacer(),
                  MenuButton1(text: 'All', onPressed: (){}),
                  Spacer(),
                  MenuButton1(text: 'Breakfast', onPressed: (){}),
                  Spacer(),
                  MenuButton1(text: 'Lunch', onPressed: (){}),
                  Spacer(),
                  MenuButton1(text: 'Dinner', onPressed: (){}),
                  Spacer(),
                ],
              ),
              SizedBox(height: 30,),
              Text('Promotions',
              style: HeaderText2,)
            ],
          ),
        ),
      ),
    );
  }
}