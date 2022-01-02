import 'package:courses_app/constants/colors.dart';
import 'package:courses_app/models/course.dart';
import 'package:courses_app/screens/home/widget/active_course.dart';
import 'package:courses_app/screens/home/widget/category_title.dart';
import 'package:courses_app/screens/home/widget/course_item.dart';
import 'package:courses_app/screens/home/widget/emoji_text.dart';
import 'package:courses_app/screens/home/widget/feature_course.dart';
import 'package:courses_app/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmojiText(),
            SearchInput(),
            FeatureCourse(),
            ActiveCourse(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  BottomNavigationBar _buildBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Text('Home', style: TextStyle(fontWeight: FontWeight.w500)),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kAccent,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Day',
          icon: Icon(Icons.calendar_today, color: kFontLight),
        ),
        BottomNavigationBarItem(
          label: 'Fav',
          icon: Icon(Icons.bookmark_outline, color: kFontLight),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.portrait_rounded, color: kFontLight),
        )
      ],
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Hello Daniel!',
          style: TextStyle(color: kFontLight, fontSize: 16),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 25, top: 10),
              padding: EdgeInsets.all(4),
              child: Icon(
                Icons.notifications_outlined,
                color: kFontLight,
                size: 32,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2)),
            ),
            Positioned(
              top: 20,
              right: 36,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: kAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
