import 'package:flutter/material.dart';
import './Transaction.dart';
import 'package:intl/intl.dart';

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
        id: 't2', title: 'Mess token', amount: 500, date: DateTime.now()),
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
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Add Transaction'),
                    style: TextButton.styleFrom(
                      primary: Colors.teal,
                      textStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: transactions
                .map((tx) => Card(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '₹ ${tx.amount.toString()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple,
                              ),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.purple, width: 2)),
                            padding: EdgeInsets.all(5),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tx.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                DateFormat.yMMMd().format(tx.date),
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.start,
      ),
    );
  }
}
