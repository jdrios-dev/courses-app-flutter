import 'package:courses_app/models/course.dart';
import 'package:courses_app/screens/detail/widget/course_description.dart';
import 'package:courses_app/screens/detail/widget/course_progress.dart';
import 'package:courses_app/screens/detail/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.course}) : super(key: key);
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course: course),
            CourseDescription(course: course),
            CourseProgress(),
          ],
        ),
      ),
    );
  }
}
