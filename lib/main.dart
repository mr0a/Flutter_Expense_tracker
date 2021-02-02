import 'package:expense_tracker/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

import './models/Transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Expense Tracker'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Card(
                child: Text(
                  'Chart! Here come the charts',
                  textAlign: TextAlign.center,
                ),
                // color: Colors.blue,
                elevation: 10.0,
              ),
              width: double.infinity,
            ),
            UserTransaction(),
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
