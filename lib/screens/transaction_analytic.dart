import 'package:card_transaction_analytics/widgets/barchartwidget.dart';
import 'package:card_transaction_analytics/widgets/piewidget.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionAnalyticScreen extends StatelessWidget {
  final List<Transaction> transaction;

  const TransactionAnalyticScreen({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 200,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: PieChartWidget(transaction: transaction),
            ),
          ),
          SizedBox(
            width: 200,
            height: 400,
          ),
        ],
      ),
    );
  }
}
