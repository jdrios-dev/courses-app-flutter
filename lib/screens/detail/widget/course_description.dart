import 'package:courses_app/constants/colors.dart';
import 'package:courses_app/models/course.dart';
import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  const CourseDescription({Key? key, required this.course}) : super(key: key);
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  course.authorImg,
                  width: 20,
                ),
                SizedBox(width: 5),
                Text(
                  course.author,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '•',
                  style: TextStyle(
                    color: kFontLight,
                    fontSize: 22,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.timelapse_sharp,
                  color: kAccent,
                ),
                SizedBox(width: 5),
                Text(
                  '1h 22min',
                  style: TextStyle(
                    fontSize: 16,
                    color: kFont,
                  ),
                ),
              ],
            ),
          ),
          Text(
            course.title,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: kFont,
            ),
          ),
          SizedBox(height: 10),
          Text(
            course.description,
            style: TextStyle(
              fontSize: 18,
              color: kFontLight,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
