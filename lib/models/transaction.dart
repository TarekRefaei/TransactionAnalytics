import 'package:flutter/material.dart';

class Transaction {
  final String category;
  final int transactionAmount;
  final double amount;
  final Color color;
  final Icon icon;
  final DateTime date;

  Transaction(
    this.category,
    this.amount,
    this.color,
    this.icon,
    this.transactionAmount,
    this.date,
  );
}
