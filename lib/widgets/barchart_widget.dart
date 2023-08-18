import 'package:flutter/material.dart';
import '../models/transaction.dart';

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
      itemBuilder: (ctx, index) {
        return CategoryInfoCard(
          totalExpense: totalExpense,
          transaction: transactions[index],
        );
      },
    );
  }
}

class CategoryInfoCard extends StatelessWidget {
  final double totalExpense;
  final Transaction transaction;

  const CategoryInfoCard({
    super.key,
    required this.transaction,
    required this.totalExpense,
  });

  @override
  Widget build(BuildContext context) {
    final double percentage = transaction.amount / totalExpense;
    final Color foregroundColor = transaction.color;
    final Color backgroundColor = Colors.grey.shade100;

    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: 1,
            alignment: Alignment.center,
            child: Container(
              height: 60,
              color: backgroundColor,
            ),
          ),
          Stack(
            children: [
              FractionallySizedBox(
                widthFactor: percentage,
                alignment: Alignment.center,
                child: Container(
                  height: 60,
                  color: foregroundColor,
                ),
              ),
              ListTile(
                leading: transaction.icon,
                iconColor: transaction.icon.color,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.category,
                      style: const TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "${transaction.transactionAmount} Transactions",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${transaction.amount} \$",
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "${(percentage * 100).toStringAsFixed(2)} %",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}