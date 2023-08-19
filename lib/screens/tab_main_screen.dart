import 'package:card_transaction_analytics/screens/transaction_analytic.dart';
import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class ExpenseTapBar extends StatelessWidget {
  const ExpenseTapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Expenses',
            style: TextStyle(
              fontFamily: "Lato-Bold",
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    "Weekly",
                    style: TextStyle(
                      fontFamily: "Lato-Thin",
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Monthly",
                    style: TextStyle(
                      fontFamily: "Lato-Thin",
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Yearly",
                    style: TextStyle(
                      fontFamily: "Lato-Thin",
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  TransactionAnalyticScreen(
                    transactions: dummyTransactions,
                    timePeriod: weeks,
                  ),
                  TransactionAnalyticScreen(
                    transactions: dummyTransactions,
                    timePeriod: months,
                  ),
                  TransactionAnalyticScreen(
                    transactions: dummyTransactions,
                    timePeriod: years,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
