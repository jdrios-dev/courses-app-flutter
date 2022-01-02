import 'package:courses_app/constants/colors.dart';
import 'package:courses_app/models/module.dart';
import 'package:flutter/material.dart';

class CoruseModule extends StatelessWidget {
  const CoruseModule({Key? key, required this.module}) : super(key: key);
  final Module module;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 180,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: module.iconBg,
                      border: Border.all(
                        color: module.iconBorder,
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      module.icon,
                      color: module.iconColor,
                      size: 32,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: List.generate(
                        20,
                        (index) => Expanded(
                          child: Container(
                            width: 3,
                            color: index % 2 == 0
                                ? Colors.transparent
                                : module.iconBorder,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(20),
              // color: Colors.blue,
              decoration: BoxDecoration(
                border: Border.all(
                  color: module.moduleBorder,
                ),
                color: module.moduleBg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _moduleAppBar(),
                  _moduleDescription(),
                  Row(
                    children: [
                      _buttonBadge(Icons.timelapse_rounded, module.time),
                      _buttonBadge(Icons.coffee, module.lesson),

                      //Container(child: Row(children:[Icon(Icons.timelapse_rounded), Text(module.time),],),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _moduleDescription() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        module.desc,
        style: TextStyle(
          fontSize: 18,
          color: kFont.withOpacity(0.8),
          height: 1.5,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Row _moduleAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(module.title,
            style: TextStyle(
              color: module.buttonFont,
              height: 1.5,
              fontWeight: FontWeight.w600,
            )),
        Icon(
          Icons.more_horiz_rounded,
          color: module.buttonFont,
        ),
      ],
    );
  }

  Container _buttonBadge(icon, text) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: module.buttonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: module.buttonFont,
          ),
          SizedBox(width: 5),
          Text(
            text,
            //module.lesson,
            style: TextStyle(color: module.buttonFont),
          ),
        ],
      ),
    );
  }
}
