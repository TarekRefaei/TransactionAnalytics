import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'category_info_card.dart';

class BarChartWidget extends StatelessWidget {
  final List<Transaction> transactions;

  const BarChartWidget({Key? key, required this.transactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double totalExpense = transactions
        .map((transaction) => transaction.amount)
        .reduce((sum, amount) => sum + amount);

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return CategoryInfoCard(
          totalExpense: totalExpense,
          transaction: transactions[index],
        );
      },
    );
  }
}