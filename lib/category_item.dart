import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {

  ItemCategory({this.bgColor, this. iconData, this.iconColor, this.btnText});

  final Color bgColor;
  final IconData iconData;
  final Color iconColor;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: bgColor.withOpacity(0.3),
          ),
          child: Icon(
            iconData,
            color: iconColor,
            size: 36,
          ),
        ),
        SizedBox(height: 8.0,),
        Text(btnText),
      ],
    );
  }
}