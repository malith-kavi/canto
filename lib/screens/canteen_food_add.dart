import 'package:canto/custom_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class CanteenFoodAddScreen extends StatefulWidget {
  const CanteenFoodAddScreen({Key? key}) : super(key: key);

  @override
  State<CanteenFoodAddScreen> createState() => _CanteenFoodAddScreenState();
}

class _CanteenFoodAddScreenState extends State<CanteenFoodAddScreen> {

  Future<void> openCamera() async {
    final ImagePicker _picker =ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null ) {
      print('Image path: ${image.path}');
    }
  }

  String Category ='Menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){},
      ),
      title: Text('Add',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white
        ),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: openCamera,
                      child: Container(
                        height: 180,
                        width: 285,
                        color: Colors.grey.shade300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 30,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        color:Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              decoration: InputDecoration(labelText: 'Name'),
                              onChanged: (value) {
                              },
                            ),
                            TextField(
                              decoration: InputDecoration(labelText: 'Description'),
                              maxLines: 3,
                              onChanged: (value) {
                              },
                            ),
                            TextField(
                              decoration: InputDecoration(labelText: 'Price'),
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                              },
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Category',
                                style: TextStyle(
                                  fontSize:16,
                                  color: Colors.grey.shade800,
                                ),
                                ),
                                Spacer(),

                                MenuButton1(
                                  text: 'Menu',
                                  isSelected: Category == 'Menu', 
                                  onPressed: (){
                                    setState(() {
                                      Category = 'Menu';
                                    });
                                  }),
                                
                                SizedBox(width: 10,),
                                MenuButton1(
                                  text: 'Other',
                                  isSelected: Category == 'Other',
                                  onPressed: (){
                                    setState(() {
                                      Category = 'Other';
                                    });
                                  },
                                  ),
                              ],
                            ),
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(labelText: 'Promotion Code',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.discount_rounded),
                            ),
                            onChanged: (value) {
                            },
                          ),
                        ),
                        SizedBox(width: 8,),
                        TextButton(
                          onPressed: (){}, 
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Apply',
                            style: TextStyle(fontSize: 12.0, color: Colors.white),))
                      ],
                    ),

                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton2(text: 'Save', onPressed: (){}),
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