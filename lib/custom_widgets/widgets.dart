import 'package:canto/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320.0,
      height: 60.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
               Color.fromARGB(255, 253, 223, 81),
               Color.fromARGB(255, 151, 133, 48),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30.0),
        ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
     ),
    );
  }
}


class CustomTextInput extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final double width;
  final double height;

  const CustomTextInput({
    Key? key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.width = 300,
    this.height = 50,
  }) : super(key: key);

  // Default decoration style for the text field
  static const textInputDecoration = InputDecoration(
    hintText: "Enter text",
    hintStyle: TextStyle(color: Colors.black, fontSize: 15),
    fillColor: Color.fromARGB(255, 255, 255, 255),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 217, 217, 217)),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 253, 223, 81)),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: textInputDecoration.copyWith(
        hintText: hintText,
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const CustomCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60,
              color: Colors.black, 
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton1 extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const MenuButton1({
    required this.text, 
    required this.onPressed,
    this.isSelected = false, 
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor:
          isSelected ? Color.fromARGB(255, 255, 193, 7) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              color: Colors.black,
            )
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0,),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 217, 217, 217),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: "Search",
            suffixIcon: Icon(Icons.search, color: Color.fromARGB(255, 255, 199, 0),), // Search icon
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          ),
          onChanged: (value) {
            
            print("Searching for: $value");
          },
        ),
      ),
    );
  }
}

class PCard extends StatelessWidget {
  final String heading;
  final String meal;
  final String description;
  final String img;
  final VoidCallback onTap;
  const PCard({required this.heading, required this.meal, required this.description, required this.img,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(heading,
                              style: BodyText4
                            ),
                            Spacer(),
                            Text(meal, style: HeaderText3,),
                            Spacer(),
                            Text(description,style: BodyText3,),
                            Spacer(),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              img,
                              width: 120,
                              height: 80,
                            ),
                          ]
                        ),
                      ],
                    ),
                  
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;

  const MenuCard({
    Key? key,
    required this.image,
    required this.text,
    required this.onTap,
    this.width = 120,
    this.height = 150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        color: Colors.black,
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 120,
                width: 120,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard2 extends StatelessWidget {
  final String image;
  final String text;
  final String price;
  final VoidCallback onTap;
  final double width;
  final double height;

  const MenuCard2({
    Key? key,
    required this.image,
    required this.text,
    required this.onTap,
    required this.price,
    this.width = 120,
    this.height = 150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        color: Colors.black,
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Image.asset(
                image,
                height: 110,
                width: 120,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Text(
                'RS.'+ price,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExtraCard extends StatelessWidget {
  final String image;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const ExtraCard({
    required this.image,
    required this.label,
    this.isSelected = false,
    required this.onTap,
    super.key
  });
  

  @override

  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 120,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? Color.fromARGB(255, 255, 193, 7) : Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 5),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}