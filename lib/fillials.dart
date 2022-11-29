import 'package:flutter/material.dart';

class FillialsScreen extends StatelessWidget {
  String region;
  FillialsScreen({required this.region});

  Widget getRegion() {
    return Image(image: AssetImage(region));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        getRegion(),
        SizedBox(height: 60),
        Text(
          "Here we have more than 10 markets for selling",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'You can easily call this numbers below: \n +998 90 390 18 98 \n +998 93 234 98 34 ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 30),
        Text(
          'Thank you for your option!!!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        )
      ],
    )));
  }
}

// // Center(child: Image.asset('assets/fergana.jpg')),
// ,
//     'assets/namangan.jpg',
//     'assets/samarkand.jpg',
//     'assets/bukhara.jpg',
//     'assets/andijan.jpg',
//     'assets/tashkent.jpg',