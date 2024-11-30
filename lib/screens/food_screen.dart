import 'package:flutter/material.dart';

var kottu = 'assets/images/kottu.png';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back button and image
            Stack(
              children: [
                Container(
                  height: 200,
                  color: Colors.black,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Positioned(
                  top: 100,
                  child: Center(
                    child: Image.asset(
                      kottu, // Replace with your image path
                      height: 225,
                      //width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                    // Rating and price
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
                    // Food title
                    const Text(
                      'Kottu',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Food description
                    const Text(
                      'Vegetable, Egg, Fish or Chicken parata kottu with chili paste',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    // Add extras section
                    const Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Row(
                    //   children: [
                    //     _buildAddExtraCard('Tomato sauce', 'assets/images/tomato_sauce.png'),
                    //     const SizedBox(width: 10),
                    //     _buildAddExtraCard('Chicken gravy', 'assets/images/chicken_gravy.png'),
                    //   ],
                    // ),
                    const Spacer(),
                    // Add to cart button
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add to cart',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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

  // Helper widget for add extras
//   Widget _buildAddExtraCard(String label, String imagePath) {
//     return Container(
//       width: 100,
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         children: [
//           Image.asset(
//             imagePath,
//             height: 50,
//             width: 50,
//             fit: BoxFit.cover,
//           ),
//           const SizedBox(height: 5),
//           Text(
//             label,
//             textAlign: TextAlign.center,
//             style: const TextStyle(fontSize: 12),
//           ),
//           const SizedBox(height: 5),
//           IconButton(
//             icon: const Icon(Icons.add_circle, color: Colors.green),
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }
}