import 'package:courses_app/constants/colors.dart';
import 'package:courses_app/models/module.dart';
import 'package:courses_app/screens/detail/widget/course_module.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  final modulesList = Module.generateModule();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'The Progress',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.grid_on_outlined,
                    color: kFontLight,
                    size: 32,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.list,
                    color: kFont,
                    size: 32,
                  ),
                ],
              ),
            ],
          ),
          ...modulesList
              .map(
                (e) => CoruseModule(module: e),
              )
              .toList(),
        ],
      ),
    );
  }
}
