import 'package:flutter/material.dart';

class TextBase extends StatelessWidget {
  final String text;
  final int color;
  final double size;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const TextBase({super.key, required this.text, required this.color, required this.size, this.fontWeight, this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(color),
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
