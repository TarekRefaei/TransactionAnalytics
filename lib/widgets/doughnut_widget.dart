import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../models/transaction.dart';
import 'inner_doughnut_title.dart';

class DoughnutChartWidget extends StatelessWidget {
  final List<Transaction> transactions;
  final double totalExpense;

  const DoughnutChartWidget({
    Key? key,
    required this.transactions,
    required this.totalExpense,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCircularChart(
          annotations: <CircularChartAnnotation>[
            CircularChartAnnotation(
              widget: InnerDoughnutTitle(totalExpense:totalExpense),
            ),
          ],
          series: [
            DoughnutSeries<Transaction, String>(
              dataSource: transactions,
              pointColorMapper: (Transaction data, _) => data.color,
              xValueMapper: (Transaction data, _) => data.category,
              yValueMapper: (Transaction data, _) => data.amount,
              strokeWidth: 10.0,
              radius: '70%',
              innerRadius: '90%',
              cornerStyle: CornerStyle.bothCurve,
              animationDelay: 20,
            ),
          ],
        ),
      ),
    );
  }
}
