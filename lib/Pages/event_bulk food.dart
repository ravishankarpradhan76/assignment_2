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
            width: MediaQuery.of(context).size.width * 1.5, // Responsive width
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
            child: Column(
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'ALL(8)',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.pink),
                            ),
                            SizedBox(height: 3),
                            Container(
                              height: 2,
                              width: 42,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        Text('Breakfast', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                        Text('Lunch & Dinner', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                        Text('Snacks', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 13,
              child: CircularImageContainer(imagePath: 'assets/images/img_8.png'),
            ),
            Positioned(
              top: 10,
              left: 25,
              child: CircularImageContainer(imagePath: 'assets/images/img_8.png'),
            ),
            Positioned(
              top: 10,
              left: 37,
              child: CircularImageContainer(imagePath: 'assets/images/img_8.png'),
            ),
          ],
        ),
      ),
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
          color: Colors.white
        ),// Circular border radius
        image: DecorationImage(
          image: AssetImage(imagePath), // Image asset
          fit: BoxFit.cover, // Ensure image covers the container
        ),
      ),
    );
  }
}
