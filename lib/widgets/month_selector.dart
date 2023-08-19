import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class MonthSelector extends StatefulWidget {
  final List<String> timePeriod;
  const MonthSelector({
    super.key,
    required this.timePeriod,
  });

  @override
  State<MonthSelector> createState() => _MonthSelectorState();
}

class _MonthSelectorState extends State<MonthSelector> {
  int selectedMonthIndex = 2;

  void goToPreviousMonth() {
    setState(() {
      selectedMonthIndex = (selectedMonthIndex - 1) % widget.timePeriod.length;
    });
  }

  void goToNextMonth() {
    setState(() {
      selectedMonthIndex = (selectedMonthIndex + 1) % widget.timePeriod.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            goToPreviousMonth();
          },
        ),
        Text(
          widget.timePeriod[selectedMonthIndex],
          style: const TextStyle(
            fontFamily: 'Lato-Thin',
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios),
          onPressed: () {
            goToNextMonth();
          },
        ),
      ],
    );
  }
}