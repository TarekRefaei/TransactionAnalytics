import 'package:card_transaction_analytics/widgets/barchart_widget.dart';
import 'package:card_transaction_analytics/widgets/doughnut_widget.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionAnalyticScreen extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionAnalyticScreen({Key? key, required this.transactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double totalExpense = transactions
        .map((transaction) => transaction.amount)
        .reduce((sum, amount) => sum + amount);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 400,
            child: PieChartWidget(
              transactions: transactions,
              totalExpense: totalExpense,
            ),
          ),
          SizedBox(
            height: 400,
            child: BarChartWidget(
              transactions: transactions,
            ),
          ),
        ],
      ),
    );
  }
}
