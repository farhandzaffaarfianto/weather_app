import 'package:flutter/material.dart';

class Constants {
  final primaryColor = const Color.fromARGB(255, 252, 107, 107);
  final secondaryColor = const Color.fromARGB(255, 253, 161, 161);
  final tertiaryColor = const Color.fromARGB(255, 241, 32, 32);
  final blackColor = const Color(0xff1a1d26);

  final greyColor = const Color(0xffd9dadb);

  final Shader shader = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 242, 171, 171),
      Color.fromARGB(255, 243, 154, 154)
    ],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  final linearGradientBlue = const LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      colors: [
        Color.fromARGB(255, 252, 107, 107),
        Color.fromARGB(255, 241, 32, 32)
      ],
      stops: [
        0.0,
        1.0
      ]);
  final linearGradientPurple = const LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      colors: [Color(0xff51087E), Color(0xff6C0BA9)],
      stops: [0.0, 1.0]);
}
