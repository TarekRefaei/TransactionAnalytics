import 'package:flutter/material.dart';
import '../models/transaction.dart';

List<Transaction> dummyTransactions = [
  Transaction(
    'Shopping',
    600.0,
    const Color(0xff7b90f3),
    const Icon(
      Icons.shopping_bag,
      color: Color(0xff003596),
    ),
    73,
    DateTime(2023, 8, 5),
  ),
  Transaction(
    'Wellness',
    200.0,
    const Color(0xff7df1b9),
    const Icon(
      Icons.favorite_border_outlined,
      color: Color(0xff00bd6f),
    ),
    73,
    DateTime(2023, 8, 5),
  ),
  Transaction(
    'Transport',
    400.0,
    const Color(0xfffd9da6),
    const Icon(
      Icons.airplanemode_active_outlined,
      color: Color(0xfffa4d52),
    ),
    73,
    DateTime(2023, 8, 5),
  ),
  Transaction(
    'Bars & Restaurants',
    1200.0,
    const Color(0xfffaba8f),
    const Icon(
      Icons.local_pizza_outlined,
      color: Color(0xfffa6b30),
    ),
    73,
    DateTime(2023, 8, 5),
  ),
  Transaction(
    'Subscription',
    700.0,
    const Color(0xff9d9df3),
    const Icon(
      Icons.percent_outlined,
      color: Color(0xff4444d9),
    ),
    73,
    DateTime(2023, 8, 5),
  ),
];

List<String> months = [
  "January",
  "February",
  "March",
  "April",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
];
List<String> weeks = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
];
List<String> years = [
  "2020",
  "2021",
  "2022",
  "2023",
];
