import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../models/transaction.dart';

class PieChartWidget extends StatelessWidget {
  final List<Transaction> transaction;

  const PieChartWidget({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Transaction, String>> series = [
      charts.Series(
        id: 'Transaction',
        data: transaction,
        domainFn: (Transaction transaction, _) => transaction.category,
        measureFn: (Transaction transaction, _) => transaction.amount,
        labelAccessorFn: (Transaction transaction, _) =>
            '\$${transaction.amount.toStringAsFixed(2)}',
      )
    ];

    return charts.PieChart(
      series,
      animate: true,
    );
  }
}
