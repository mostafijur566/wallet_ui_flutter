import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {

  TransactionList({this.boxColor, this.iconData, this.date, this.paymentType, this.payment});

  final Color boxColor;
  final IconData iconData;
  final String date;
  final String paymentType;
  final String payment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Text(
              paymentType,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        Spacer(),
        Text(
          '-\$$payment',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
