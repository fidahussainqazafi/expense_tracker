import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

import '../model/expenses_model.dart';

class ExpensesList extends StatelessWidget {

  final List<Expense>  expense;
  const ExpensesList({Key? key, required this.expense}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: expense.length,
        itemBuilder: (context,index) => ExpenseItem(expense : expense[index])
    );
  }
}
