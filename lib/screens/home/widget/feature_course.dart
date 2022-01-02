import 'package:courses_app/models/course.dart';
import 'package:courses_app/screens/home/widget/category_title.dart';
import 'package:courses_app/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

class FeatureCourse extends StatelessWidget {
  final courseList = Course.generateCourse();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle(
            leftText: 'Top of the week',
            rightText: 'View all',
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: courseList.length,
              itemBuilder: (BuildContext context, int index) => CourseItem(
                course: courseList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
