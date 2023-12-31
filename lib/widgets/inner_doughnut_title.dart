import 'package:flutter/material.dart';

class InnerDoughnutTitle extends StatelessWidget {
  final double totalExpense;

  const InnerDoughnutTitle({
    super.key,
    required this.totalExpense,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Total Expenses",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Lato-Thin",
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        Text(
          "$totalExpense \$",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "Lato-Bold",
            fontSize: 40,
          ),
        ),
      ],
    );
  }
}
