import 'package:expense_tracker/model/expenses_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;
  const ExpenseItem({Key? key, required this.expense}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16.0),
        child: Column(
          children: [
            Text(expense.title),
          const  SizedBox(height: 5,),
            Row(
              children: [
                Text(expense.amount.toStringAsFixed(2)),
                // Text('${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Icon(categoryIcons[expense.category]),
                Text(expense.formattedDate),

              ],
            )
          ],
        ),
      ),
    );
  }
}
