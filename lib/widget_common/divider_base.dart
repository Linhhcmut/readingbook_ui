import 'package:flutter/material.dart';

class DividerBase extends StatelessWidget {
  const DividerBase({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(thickness: 2, color: Colors.black12, endIndent: 100, indent: 100, height: 1);
  }
}
