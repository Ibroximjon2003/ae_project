import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class BuyingProductScreen extends StatefulWidget {
  const BuyingProductScreen({super.key});

  @override
  State<BuyingProductScreen> createState() => _BuyingProductScreenState();
}

class _BuyingProductScreenState extends State<BuyingProductScreen> {
  final String text =
      'Hello dear friend! Because of technical problems, now online buying is not working. \nBut you can easily call our call-center below and we wil deliver\n\n +998 90 390 18 98 \n Mr.Maxammadjonov';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buy')),
      body: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                text,
                textStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 200),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 100),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ],
      ),
    );
  }
}
