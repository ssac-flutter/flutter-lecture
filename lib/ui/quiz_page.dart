import 'dart:math';

import 'package:flutter/material.dart';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  String toString() {
    return 'Transaction{trader: $trader, year: $year, value: $value}';
  }
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

class QuizPage extends StatelessWidget {
  int v = 1;

  @override
  Widget build(BuildContext context) {
    // 1번 답
    // List<Transaction> result = [];
    // for (var i = 0; i < transactions.length; i++) {
    //   if (transactions[i].year == 2011) {
    //     result.add(transactions[i]);
    //   }
    // }
    // result.sort((t1, t2) {
    //   return t1.value.compareTo(t2.value);
    // });

    final dap1 = (transactions.where((t) => t.year == 2011).toList()
      ..sort((t1, t2) => t1.value.compareTo(t2.value)))
      .map((e) => e.trader.name);

    final dap2 = transactions.map((e) => e.trader.city).toSet();

    final dap3 = transactions.where((e) => e.trader.city == "Cambridge")
      .map((e) => e.trader.name).toSet().toList()
      ..sort();

    final dap4 = (transactions..sort((t1, t2) => t1.trader.name.compareTo(t2.trader.name)))
      .map((e) => e.trader.name).toSet();

    final dap5 = transactions.any((e) => e.trader.city == "Milan");

    final dap6 = transactions.where((e) => e.trader.city == "Cambridge")
      .map((e) => e.value);

    final dpa7 = transactions.map((e) => e.value)
      .reduce(max);

    final dpa8 = transactions.map((e) => e.value)
        .reduce(min);

    return Scaffold(
        appBar: AppBar(
          title: Text('퀴즈'),
        ),
        body: Column(
          children: [
            Text(dap1.toString()),
            Text(dap2.toString()),
            Text(dap3.toString()),
            Text(dap4.toString()),
            Text('$dap5'),
            Text(dap6.toString()),
            Text('$dpa7'),
            Text('$dpa8'),
          ],
        ));
  }
}
