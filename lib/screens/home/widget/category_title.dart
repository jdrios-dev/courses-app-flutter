import 'package:courses_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle(
      {Key? key, required this.leftText, required this.rightText})
      : super(key: key);
  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: kFont,
            ),
          ),
          Text(
            rightText,
            style: TextStyle(
              fontSize: 16,
              color: kFontLight,
            ),
          ),
        ],
      ),
    );
  }
}
