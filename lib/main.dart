import './widgets/new_transaction.dart';
import 'package:flutter/material.dart';
import './models/Transaction.dart';
import './widgets/TransactionList.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _userTransactions = [
    Transaction(
        id: 't1',
        title: 'New electronic components',
        amount: 800,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Mess token', amount: 500, date: DateTime.now()),
  ];

  void _addTransaction(String title, double amount) {
    final newtx = Transaction(
        id: 'tx', amount: amount, date: DateTime.now(), title: title);
    setState(() {
      _userTransactions.add(newtx);
    });
  }

  void _startNewTransaction(BuildContext context) {
    // Context is the widget metadata
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return NewTransaction(_addTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Expense Tracker'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startNewTransaction(context),
          )
        ],
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
                color: Colors.blue,
                elevation: 10.0,
              ),
              width: double.infinity,
            ),
            TransactionList(_userTransactions),
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startNewTransaction(context),
      ),
    );
  }
}
