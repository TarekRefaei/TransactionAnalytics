import 'package:card_transaction_analytics/screens/tab_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [SystemUiOverlay.top],
    );
    return MaterialApp(
      title: 'Transaction Analytics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lato'
      ),
      home: const ExpenseTapBar(),
    );
  }
}
