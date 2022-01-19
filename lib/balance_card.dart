import 'package:flutter/material.dart';

class BalanceCard extends StatefulWidget {


  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> with SingleTickerProviderStateMixin{

  double balance = 8400;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      upperBound: balance,
    );

    controller.forward();

    controller.addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      height: 140.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          end: Alignment.topLeft,
          begin: Alignment.bottomRight,
          colors: [
            Colors.blue[900],
            Colors.purpleAccent.withOpacity(0.5),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$${controller.value.toInt()}',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 28.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              'Total Balance',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}