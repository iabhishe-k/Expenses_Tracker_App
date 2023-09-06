import 'package:expensestracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expensestracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.69,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.49,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Expense Tracker'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add),)
        ],
      ),
      body: Column(
        children: [
          const Text('data'),
          Expanded(
              child: ExpensesList(
            expenses: _registeredExpenses,
          ))
        ],
      ),
    );
  }
}
