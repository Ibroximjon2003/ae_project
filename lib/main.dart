import 'package:ae_project/splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Project());
}

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
