import 'package:flutter/material.dart';
import 'package:wallet_ui_flutter/transaction_list.dart';

import 'balance_card.dart';
import 'category_item.dart';
import 'header.dart';

class WalletScreen extends StatefulWidget {

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 5.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Header(),
              ),
              BalanceCard(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemCategory(
                      bgColor: Colors.blue,
                      iconData: Icons.send,
                      iconColor: Colors.blue,
                      btnText: 'Send',
                    ),
                    ItemCategory(
                      bgColor: Colors.orange,
                      iconData: Icons.work,
                      iconColor: Colors.orange,
                      btnText: 'Activities',
                    ),
                    ItemCategory(
                      bgColor: Colors.blueAccent,
                      iconData: Icons.trending_up,
                      iconColor: Colors.blueAccent,
                      btnText: 'Stats',
                    ),
                    ItemCategory(
                      bgColor: Colors.purple,
                      iconData: Icons.payment,
                      iconColor: Colors.purple,
                      btnText: 'Stats',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 16.0, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.withOpacity(0.1),
                        offset: Offset(0, -10),
                      ),
                    ],
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(32, 16, 32, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Transaction',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'See All',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 16.0,),

                            TransactionList(
                              boxColor: Colors.purple,
                              iconData: Icons.payment,
                              date: 'Today',
                              paymentType: 'Electric Bill',
                              payment: '50',
                            ),

                            SizedBox(height: 16.0,),

                            TransactionList(
                              boxColor: Colors.green,
                              iconData: Icons.payment,
                              date: 'Today',
                              paymentType: 'Water Bill',
                              payment: '20',
                            ),

                            SizedBox(height: 16.0,),

                            TransactionList(
                              boxColor: Colors.orange,
                              iconData: Icons.payment,
                              date: 'Yesterday',
                              paymentType: 'Internet Bill',
                              payment: '10',
                            ),

                            SizedBox(height: 16.0,),

                            TransactionList(
                              boxColor: Colors.blue,
                              iconData: Icons.payment,
                              date: 'Monday',
                              paymentType: 'Gas Bill',
                              payment: '50',
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
