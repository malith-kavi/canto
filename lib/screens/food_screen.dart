import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';

var kottu = 'assets/images/kottu.png';
var gravy = 'assets/images/gravy.png';
var tomato = 'assets/images/tomato.png';


String selectedExtra = '';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){},
      ),
      backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20,
              color: Colors.black,
            ),  
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            kottu,
                            height: 225,
                            width: 300,
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 20),
                            const SizedBox(width: 5),
                            const Text(
                              '4.8',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Text(
                          'Rs.150',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Kottu',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Vegetable, Egg, Fish or Chicken parata kottu with chilipaste',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                       ExtraCard(
                        image: tomato, 
                        label: 'Tomato Source', 
                        isSelected: selectedExtra == 'Tomato Source' , 
                        onTap: (){
                          setState((){
                            selectedExtra = 'Tomato Source';
                          });
                        },
                        ),
                        const SizedBox(width: 10),
                        ExtraCard(
                          image: gravy, 
                          label: 'Chicken Gravy', 
                          isSelected: selectedExtra == 'Chicken Gravy',
                          onTap: (){
                            setState(() {
                              selectedExtra = 'Chicken Gravy';
                            });
                          },
                        ),
                        const SizedBox(width: 10),
                       
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton2(text: 'Add to Cart', onPressed: (){}),
                      ],
                    ),
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