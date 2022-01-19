import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Mostafijur Rahman',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),

        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('images/profile.png'),
        )
      ],
    );
  }
}
