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
  final VoidCallback onPressed;

  const MenuButton1({required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 255, 193, 7),
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