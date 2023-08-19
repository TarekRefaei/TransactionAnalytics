import 'package:flutter/material.dart';
import '../data/dummy_data.dart';


class MonthSelector extends StatefulWidget {
  const MonthSelector({
    super.key,
  });

  @override
  State<MonthSelector> createState() => _MonthSelectorState();
}

class _MonthSelectorState extends State<MonthSelector> {

  int selectedMonthIndex = DateTime.now().month - 1;

  void goToPreviousMonth() {
    setState(() {
      selectedMonthIndex = (selectedMonthIndex - 1) % months.length;
    });
  }

  void goToNextMonth() {
    setState(() {
      selectedMonthIndex = (selectedMonthIndex + 1) % months.length;
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
          months[selectedMonthIndex],
          style: const TextStyle(
            fontFamily: 'Lato-Thin',
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        IconButton(
          icon: const Icon(
              Icons.arrow_forward_ios
          ),
          onPressed: () {
            goToNextMonth();
          },
        ),
      ],
    );
  }
}