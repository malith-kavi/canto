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
        width: 120,
        height: 140,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? Color.fromARGB(255, 255, 193, 7) : Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Spacer(),
            Image.asset(
              image,
              height: 60,
              width: 100,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
              
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton2({
    required this.text, 
    required this.onPressed, 
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.0,
      height: 65.0,

      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: mainColor,
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CartCard extends StatefulWidget {
  final String meal;
  final String price;
  final String img;

  const CartCard({
    required this.meal,
    required this.price,
    required this.img,
    super.key,
  });

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int count = 1;
  
  void increaseCount() {
    setState(() {
      count++;
    });
  }

  void decreaseCount() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 150,
      width: 340,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent, 
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.img,
                  width: 120,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              
              Expanded( 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.meal,
                      style: HeaderText3,
                    ),
                    Text(
                      'RS.' + widget.price,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        IconButton(
                          onPressed: decreaseCount,
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          '$count',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(
                          onPressed: increaseCount,
                          icon: const Icon(
                            Icons.add,
                            color: Colors.green,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete_sweep_outlined),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String name;
  final String price;
  final String date;

  const NotificationCard({
    required this.name, 
    required this.price, 
    required this.date,
    });
  
  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 80,
      width: 350,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              SizedBox(width: 20,),
              
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                  ),
                child: Icon(
                  Icons.notifications_active,
                  color: Colors.black,
                  ),
              ),
              const SizedBox(width: 20),
              
              Expanded( 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      name,
                      style: BodyText4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(date,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),

                        SizedBox(width: 10,),
                        
                        Text(
                          'RS.' + price + ' Token',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete_sweep_outlined),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final IconData icon;
  final String text;
  final IconData? trailingIcon;

  const ProfileField({
    Key? key,
    required this.icon,
    required this.text,
    this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (trailingIcon != null)
            Icon(trailingIcon, color: Colors.black),
        ],
      ),
    );
  }
}

class SettingsCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final VoidCallback onTap;

  const SettingsCard({
    Key? key,
    required this.name, 
    required this.icon, 
    required this. onTap,
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox( 
        height: 80,
        width: 350,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent, 
            borderRadius: BorderRadius.circular(2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                SizedBox(width: 20,),
                
                Icon(icon,
                  color: Colors.white,
                ),
                
                const SizedBox(width: 20),
      
                Text(name,style: BodyText6,)
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsCard2 extends StatelessWidget {
  final String name;
  final IconData icon;
  final VoidCallback onTap;

  const SettingsCard2({
    Key? key,
    required this.name, 
    required this.icon, 
    required this. onTap,
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox( 
        height: 80,
        width: 350,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent, 
            borderRadius: BorderRadius.circular(2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                SizedBox(width: 20,),
                
                Icon(icon,
                  color: mainColor,
                ),
                
                const SizedBox(width: 20),
      
                Text(
                  name,
                  style: BodyText7,
                  )
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}

