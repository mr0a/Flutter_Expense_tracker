import 'package:flutter/material.dart';
import './new_transaction.dart';
import './TransactionList.dart';
import '../models/Transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
