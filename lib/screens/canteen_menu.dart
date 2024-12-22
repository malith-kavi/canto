import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';

var foodplate = 'assets/images/foodPlate.png';
var rice = 'assets/images/rice.png';
var riceCurry = 'assets/images/riceCurry.png';
var samosa = 'assets/images/samosa.png';
var cool = 'assets/images/cool.png';
var iceCream = 'assets/images/iceCream.png';
var juice = 'assets/images/juice.png';

class CanteenMenu extends StatefulWidget {
  const CanteenMenu({super.key});

  @override
  State<CanteenMenu> createState() => _CanteenMenuState();
}

class _CanteenMenuState extends State<CanteenMenu> {

  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: SingleChildScrollView(
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
                    MenuButton1(
                      text: 'All', 
                      isSelected: selectedCategory == 'All',
                      onPressed: (){
                        setState(() {
                          selectedCategory = 'All';
                        });
                      }
                      ),
                    Spacer(),
                    MenuButton1(
                      text: 'Breakfast', 
                      isSelected: selectedCategory == 'Breakfast',
                      onPressed: (){
                        setState(() {
                          selectedCategory = 'Breakfast';
                        });
                      }),
                    Spacer(),
                    MenuButton1(
                      text: 'Lunch',
                      isSelected: selectedCategory == 'Lunch', 
                      onPressed: (){
                        setState(() {
                          selectedCategory = 'Lunch';
                        });
                      }),
                    Spacer(),
                    MenuButton1(
                      text: 'Dinner',
                      isSelected: selectedCategory == 'Dinner', 
                      onPressed: (){
                        setState(() {
                          selectedCategory = 'Dinner';
                        });
                      }),
                    Spacer(),
                  ],
                ),
            
                SizedBox(height: 20,),
                Text('Promotions',
                style: HeaderText3,
                ),
                SizedBox(height: 10,),
                PCard(
                heading: 'Today\'s Lunch', 
                meal: 'Free dhal Curry', 
                description: 'on all orders from Rs.150', 
                img: foodplate, 
                onTap: (){},
                ),
                SizedBox(height: 20,),
                Text('Popular',
                style: HeaderText3,
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MenuCard(image: riceCurry, text: 'Rice with Chicken', onTap: (){}),
                      SizedBox(width: 20,),
                      MenuCard(image: rice, text: 'Kottu', onTap: (){}),
                      SizedBox(width: 20,),
                      MenuCard(image: samosa, text: 'Samosa', onTap: (){}),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text('Other',
                style: HeaderText3,
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MenuCard2(image: juice, text: 'Fresh Juice', price: '50', onTap: (){}),
                      SizedBox(width: 20,),
                      MenuCard2(image: iceCream, text: 'Ice-Cream', price: '120', onTap: (){}),
                      SizedBox(width: 20,),
                      MenuCard2(image: cool, text: 'Cool Drinks', price: '100', onTap: (){}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}