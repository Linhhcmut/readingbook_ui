import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../widget_common/elevator_button_base.dart';
import '../../widget_common/text_base.dart';

class InfoBoxDetailPage extends StatelessWidget {
  final int indexPage;
  const InfoBoxDetailPage({super.key, required this.indexPage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Row(
        children: <Widget>[
          _imageBook(indexPage),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: 140,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(child: _nameBook()),
                      _priceBook(),
                    ],
                  ),
                ),
                _buttonReading()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _imageBook(int indexPage) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Card(
        elevation: 15,
        child: Image.asset("assets/images/book$indexPage.png", height: 140, fit: BoxFit.contain),
      ),
      Container(
        height: 36,
        alignment: Alignment.center,
        child: const TextBase(text: "216 trang", color: 0xFF9F8B0C, size: 14, fontWeight: FontWeight.w600),
      )
    ],
  );
}

Widget _nameBook() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      TextBase(
        text: "Logo Design Love: A Guide to Creating Iconic Brand Identities",
        color: 0XFF2C2605,
        size: 20,
        fontWeight: FontWeight.bold,
        fontFamily: "Roboto_Bold",
      ),
      SizedBox(height: 5),
      TextBase(text: "by David Airey", color: 0xFF9F8B0C, size: 14, fontFamily: "Roboto"),
    ],
  );
}

Widget _priceBook() {
  return Row(
    children: <Widget>[
      const TextBase(text: "\$9.99", color: 0xFF2C2605, size: 20, fontFamily: "Roboto_Bold"),
      const SizedBox(width: 15),
      RatingBar.builder(
        itemSize: 17,
        itemCount: 5,
        minRating: 1,
        initialRating: 3,
        itemBuilder: (context, _) {
          return const Icon(
            Icons.star,
            color: Color(0xff4C4309),
          );
        },
        onRatingUpdate: (value) {
          log("value: $value");
        },
      ),
    ],
  );
}

Widget _buttonReading() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: const <Widget>[
      ElevatorButtonBase(
        text: "ĐỌC NGAY",
      ),
      SizedBox(width: 10),
      ElevatorButtonBase(type: "CircleBorder")
    ],
  );
}
