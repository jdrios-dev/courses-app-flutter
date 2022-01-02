import 'package:courses_app/constants/colors.dart';
import 'package:courses_app/screens/home/widget/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        children: [
          CategoryTitle(leftText: 'Currently active', rightText: 'View all'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kPrimaryLight.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 2,
                  color: kFontLight.withOpacity(0.3),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'assets/img2.jpg',
                      width: 70,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Watercolor',
                        style: TextStyle(
                          color: kFont,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Text('2 second left',
                          style: TextStyle(
                            color: kFontLight,
                          )),
                    ],
                  ),
                  CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 6.0,
                    percent: 0.8,
                    center: Text(
                      '70%',
                      style: TextStyle(
                        color: kFont,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    backgroundColor: kPrimaryLight,
                    progressColor: kAccent,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
