import 'package:flutter/material.dart';
import 'home_page.dart';
void main() {
  runApp(animatedText());
}

class animatedText extends StatelessWidget {
  const animatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

