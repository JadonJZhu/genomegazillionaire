import 'dart:async';

import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/process_data.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/investor_model.dart';
import 'package:genome_gazillionaire/models/process_model.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_list/investors_list_view.dart';

class InvestorsPage extends StatefulWidget {
  const InvestorsPage({super.key});

  @override
  State<InvestorsPage> createState() => _InvestorsPageState();
}

class _InvestorsPageState extends State<InvestorsPage> {
  final user = userData;
  final processList = processData;

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Start the periodic timer
    _timer = Timer.periodic(const Duration(seconds: 1), refreshPage);
  }

  @override
  void dispose() {
    // Cancel the timer to prevent memory leaks
    _timer.cancel();
    super.dispose();
  }

  void refreshPage(Timer timer) {
    setState(
      () {},
    );
  }

  void signInvestor(Investor investor) {
    setState(() {
      if (investor.triesLeft != 0) {
        investor.purchase();
        userData.balance += investor.offeredMoney;
        userData.percentOwned -= investor.profitsPercent;
        for (Process process in processList) {
          process.currentMultiplier *= (1 - investor.profitsPercent / 100);
        }
        investor.eliminateTries();
      }
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 45, 171),
      appBar: AppBar(
        title: Text(
          "Investors: \$${user.balanceString}",
          style: pageTitleStyle,
        ),
        backgroundColor: const Color.fromARGB(255, 17, 45, 135),
      ),
      body: InvestorsListView(signInvestor: signInvestor),
    );
  }
}
