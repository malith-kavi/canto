import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';

var kottu = 'assets/images/kottu.png';
var riceCurry = 'assets/images/riceCurry.png';
var samosa = 'assets/images/samosa.png';
var cool = 'assets/images/cool.png';
var iceCream = 'assets/images/iceCream.png';
var juice = 'assets/images/juice.png';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){},
        ),
        title: Text('Cart',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
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
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  
                      CartCard(meal: 'Kottu', price: '150', img: kottu),
                      CartCard(meal: 'Rice and Curry', price: '120', img: riceCurry),
                      CartCard(meal: 'Fresh Juice', price: '180', img: juice),
                      CartCard(meal: 'Kottu', price: '150', img: kottu),
                      CartCard(meal: 'Rice and Curry', price: '120', img: riceCurry),
                      CartCard(meal: 'Fresh Juice', price: '180', img: juice),
                      
                      
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
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Sub total',style: BodyText4,),
                        Spacer(),
                        Text('Rs. 1200',style: BodyText4,),
                      
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: Colors.black54, 
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Total',style: BodyText5,),
                        Spacer(),
                        Text('Rs. 1200',style: BodyText5,),
                      ],
                    ),
                    Spacer(),    
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton2(text: 'Place a Token', onPressed: (){}),
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