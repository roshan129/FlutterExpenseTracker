import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/expesnse_list.dart';
import 'package:flutter_expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter course",
      amount: 19.98,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "Cinema",
      amount: 19.98,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(child: ExpenseList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
