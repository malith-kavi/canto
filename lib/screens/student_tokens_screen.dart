import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';


class StudentTokensScreen extends StatelessWidget {
  const StudentTokensScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){},
        ),
        title: Text('Tokens',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
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
              color: Colors.black,
            ),  
            Expanded(
              flex: 1,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        'Breakfast',
                        style: BodyText5,
                      ),
                      SizedBox(height: 10,),
                      TokenCard(orderNumber: '#001', food: 'Kottu', price: '150'),
                      SizedBox(height: 5,),
                      TokenCard(orderNumber: '#001', food: 'Kottu', price: '150'),
                      SizedBox(height: 5,),
                    TokenCard(orderNumber: '#001', food: 'Kottu', price: '150'),
                    ],
                  ),
                ),

              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        'Lunch',
                        style: BodyText5,
                      ),
                      SizedBox(height: 10,),
                      TokenCard(orderNumber: '#001', food: 'Kottu', price: '150'),
                      SizedBox(height: 5,),
                      TokenCard(orderNumber: '#001', food: 'Kottu', price: '150'),
                      SizedBox(height: 5,),
                      TokenCard(orderNumber: '#001', food: 'Kottu', price: '150'),
                      
                    ],
                  ),
                ),
            ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        'Dinner',
                        style: BodyText5,
                      ),
                      SizedBox(height: 10,),
                      TokenCard(orderNumber: '#001', food: 'Kottu', price: '150'),
                      SizedBox(height: 5,),
                      TokenCard(orderNumber: '#001', food: 'Kottu', price: '150'),
                      SizedBox(height: 5,),
                      TokenCard(orderNumber: '#001', food: 'Kottu', price: '150'),
                    ],
                  ),
                ),

            ),
            ),
          ],
        ),
      ),
    );
  }
}