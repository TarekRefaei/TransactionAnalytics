import 'package:card_transaction_analytics/screens/tab_main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transaction Analytics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExpenseTapBar() // Replace with actual data
    );
  }
}