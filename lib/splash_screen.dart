import 'package:ae_project/participants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: GestureDetector(
          child: Column(
            children: [
              Image.asset('assets/recycle.jpg'),
              Image.asset('assets/water.jpg'),
            ],
          ),
          onTap: (() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => ParticipantsScreen())));
          }),
        ),
      ),
    ));
  }
}
