import 'package:courses_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            decoration: BoxDecoration(
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                borderRadius: BorderRadius.circular(20),
                color: kFontLight.withOpacity(0.1)),
            child: TextField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Search for history, classes...',
                hintStyle: TextStyle(color: kFontLight),
              ),
            ),
          ),
          Positioned(
            right: 45,
            top: 32,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: kAccent,
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
