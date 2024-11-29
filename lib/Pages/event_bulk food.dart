import 'package:flutter/material.dart';

class EventBulkFood extends StatefulWidget {
  const EventBulkFood({super.key});

  @override
  State<EventBulkFood> createState() => _EventBulkFoodState();
}

class _EventBulkFoodState extends State<EventBulkFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width, // Use the full screen width
            height: 268,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_8.png'), // Updated asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(width: 12),
                    Text(
                      'Wedding',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 160),
                // Categories Section
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildCategoryItem('ALL(8)', true),
                        _buildCategoryItem('Breakfast', false),
                        _buildCategoryItem('Lunch & Dinner', false),
                        _buildCategoryItem('Snacks', false),
                      ],
                    ),
                  ),
                ),
                // Food Image/Section Container
                Container(
                  height: 255,
                  width: double.infinity,
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 13),
            CircularImageContainer(imagePath: 'assets/images/img_8.png'),
            SizedBox(width: 12),
            CircularImageContainer(imagePath: 'assets/images/img_8.png'),
            SizedBox(width: 12),
            CircularImageContainer(imagePath: 'assets/images/img_8.png'),
          ],
        ),
      ),
    );
  }

  // Method to build category items
  Widget _buildCategoryItem(String label, bool isSelected) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: isSelected ? Colors.pink : Colors.black,
          ),
        ),
        SizedBox(height: 3),
        if (isSelected)
          Container(
            height: 2,
            width: 42,
            color: Colors.pink,
          ),
      ],
    );
  }
}

class CircularImageContainer extends StatelessWidget {
  final String imagePath;

  const CircularImageContainer({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.19,
      width: 32.19,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.56),
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
