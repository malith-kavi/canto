import 'package:canto/constants.dart';
import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';


class AdminTokenSummeryScreen extends StatelessWidget {
  const AdminTokenSummeryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){},
        ),
        title: Text('Token Summery',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
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
                          Text('Token',style: BodyText4,),
                          Spacer(),
                          Text('#001',style: BodyText5,),
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
                          Text('Total',style: BodyText4,),
                          Spacer(),
                          Text('Rs. 120',style: BodyText5,),
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
                          Text('Time to pick',style: BodyText4,),
                          Spacer(),
                          Text('2.30 pm',style: BodyText5,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                      color: Colors.black54, 
                      thickness: 1,
                      ),
                      SizedBox(height: 150,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton3(text: 'Update', onPressed: (){}),
                          CustomButton3(text: 'Cancel', onPressed: (){}),

                        ],
                      )
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