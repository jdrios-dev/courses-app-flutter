import 'package:courses_app/constants/colors.dart';
import 'package:courses_app/models/course.dart';
import 'package:courses_app/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key, required this.course}) : super(key: key);
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 20),
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: kPrimaryLight,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    course.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              course.authorImg,
                              width: 25,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            course.author,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ]),
                        Row(children: [
                          Text(
                            course.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              '•',
                              style: TextStyle(
                                color: kFontLight,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Text(
                            '2h 22min',
                            style: TextStyle(
                              color: kFontLight,
                            ),
                          ),
                        ]),
                      ]),
                ),
              ),
            ],
          ),
          Positioned(
            top: 155,
            right: 10,
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    course: course,
                  ),
                ),
              ),
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: kAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
