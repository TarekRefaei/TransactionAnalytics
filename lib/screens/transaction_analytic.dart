import 'package:card_transaction_analytics/widgets/barchart_widget.dart';
import 'package:card_transaction_analytics/widgets/doughnut_widget.dart';
import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/transaction.dart';
import '../widgets/month_selector.dart';

class TransactionAnalyticScreen extends StatelessWidget {
  final List<Transaction> transactions;
  final List<String> timePeriod;

  const TransactionAnalyticScreen({
    Key? key,
    required this.transactions,
    required this.timePeriod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double totalExpense = transactions
        .map((transaction) => transaction.amount)
        .reduce((sum, amount) => sum + amount);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: DoughnutChartWidget(
                transactions: transactions,
                totalExpense: totalExpense,
              ),
            ),
            Expanded(
              flex: 1,
              child: MonthSelector(timePeriod: timePeriod),
            ),
            Expanded(
              flex: 3,
              child: BarChartWidget(
                transactions: transactions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
