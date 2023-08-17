import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../models/transaction.dart';

class BarChartWidget extends StatelessWidget {
  final List<Transaction> transaction;

  const BarChartWidget({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Transaction, String>> series = [
      charts.Series(
        id: 'Transaction',
        data: transaction,
        domainFn: (Transaction transaction, _) => transaction.category,
        measureFn: (Transaction transaction, _) => transaction.amount,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      )
    ];

    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
