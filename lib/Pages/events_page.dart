import 'package:flutter/material.dart';
import 'event_bulk food.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final List<String> imageAssets = [
    'assets/images/img_1.png',
    'assets/images/img.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
    'assets/images/img_5.png',
    'assets/images/img_6.png',
    'assets/images/img_7.png',
    'assets/images/house.png',
    'assets/images/haldi.png',
    'assets/images/wedding.png',
    'assets/images/reception.png',
    'assets/images/engagement.png',
    'assets/images/workshop.png',
  ];

  final List<String> eventTitles = [
    'House Party',
    'Formhouse Party',
    'Kitty Party',
    'Birthday',
    'Pooja',
    'Cocktail Party',
    'Office Party',
    'Get Together',
    'House Warming',
    'Haldi',
    'Wedding',
    'Reception',
    'Engagement',
    'Workshop',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Events',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: Icon(Icons.keyboard_backspace_outlined),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: imageAssets.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the EventBulkFood page and pass the event title
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventBulkFood(),
                ),
              );
            },
            child: Stack(
              children: [
                Container(
                  height: 133.47,
                  width: 109,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.8),
                    image: DecorationImage(
                      image: AssetImage(imageAssets[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Text(
                    eventTitles[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

