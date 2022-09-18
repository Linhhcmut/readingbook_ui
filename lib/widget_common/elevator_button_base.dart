import 'package:flutter/material.dart';
import 'package:reading_book/widget_common/text_base.dart';

class ElevatorButtonBase extends StatelessWidget {
  final String? type;
  final String? text;
  const ElevatorButtonBase({super.key, this.text, this.type});

  @override
  Widget build(BuildContext context) {
    if (type == "CircleBorder") {
      return const SizedBox(
        width: 36,
        height: 36,
        child: CircleAvatar(
          backgroundColor: Color(0xffDC4B5D),
          child: Icon(Icons.favorite_border, size: 20, color: Color(0xffFFFFFF)),
          //favorite_outlined
        ),
      );
    }
    return SizedBox(
      width: 124,
      height: 36,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 13,
          backgroundColor: const Color(0xff4A90E2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
        child: TextBase(text: text!, color: 0xffFFFFFF, size: 13, fontFamily: "Roboto_Bold"),
      ),
    );
  }
}
