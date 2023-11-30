import 'package:expense_tracker/model/expenses_model.dart';
import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {

  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.9,
        date: DateTime.now(),
        category: Category.work),

    Expense(
        title: 'cinema',
        amount: 5.5,
        date: DateTime.now(),
        category: Category.lesier),
  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
         const Text('The chart'),
          Expanded(
              child: ExpensesList(expense: _registeredExpenses)),
        ],
      ),
    );
  }
}
