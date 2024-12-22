import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';


class TokenScreen extends StatelessWidget {
  const TokenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){},
        ),
        title: Text('Token',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
        ),
      backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Name',style: BodyText4,),
                          Spacer(),
                          Text('Uditha Thathsara',style: BodyText5,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                      color: Colors.black54, 
                      thickness: 1,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Date',style: BodyText4,),
                          Spacer(),
                          Text('30 Octomber 2024',style: BodyText5,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                      color: Colors.black54, 
                      thickness: 1,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Food',style: BodyText4,),
                          Spacer(),
                          Text('Kottu',style: BodyText5,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                      color: Colors.black54, 
                      thickness: 1,
                      ),
                      SizedBox(height: 10,),  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Time to Pick',style: BodyText4,),
                          Spacer(),
                          Text('2.30 pm',style: BodyText5,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                      color: Colors.black54, 
                      thickness: 1,
                      ),
                      SizedBox(height: 10,),
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
                          CustomButton2(text: 'Pay and Recieve', onPressed: (){}),
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