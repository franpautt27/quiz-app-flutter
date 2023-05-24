import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/quiz-logo.png",
      width: 300,
      color: const Color.fromARGB(102, 255, 255, 255),
    );
  }
}
