import 'package:flutter/material.dart';
import './Transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
        id: 't1',
        title: 'New electronic components',
        amount: 800,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Mess token', amount: 50, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Expense Tracker'),
      ),
      body: Column(
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
          Column(
            children: transactions
                .map((tx) => Card(
                      child: Text(tx.title),
                    ))
                .toList(),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}
