// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/process_data.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/process.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_page.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list/process_list.dart';
import 'dart:async';

import 'package:genome_gazillionaire/views/globals/orange_elevated_button.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_page.dart';

class FacilityPage extends StatefulWidget {
  const FacilityPage({super.key});

  @override
  State<FacilityPage> createState() => _FacilityPageState();
}

class _FacilityPageState extends State<FacilityPage> {
  final user = userData;

  final processList = processData;

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Start the periodic timer
    _timer = Timer.periodic(Duration(seconds: 1), gainRevenue);
  }

  @override
  void dispose() {
    // Cancel the timer to prevent memory leaks
    _timer.cancel();
    super.dispose();
  }

  void gainRevenue(Timer timer) {
    for (Process process in processList) {
      if (process.hasManager) {
        setState(() => user.balance += process.effectivePerSecond);
      }
    }
  }

  void completeProcess(Process process) {
    setState(() {
      if (!process.isPurchased && user.balance >= process.cost) {
        process.purchase();
        user.balance -= process.cost;
      } else {
        user.balance += process.moneyPerClick;
      }
    });
  }

  void hireManager(Process process) {
    setState(() {
      if (user.balance >= process.managerCost) {
        process.hireManager();
        user.balance -= process.managerCost;
      }
    });
  }

  void pushDealsPage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DealsPage();
      },
    );
  }

  void pushInvestorsPage(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return InvestorsPage();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text("Genome Gazillionaire \$${user.balance}"),
        leading: CircleAvatar(
          backgroundImage: AssetImage("../../assets/images/1.png"),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          ProcessListView(
            processList: processList,
            completeProcess: completeProcess,
            hireManager: hireManager,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OrangeElevatedButton(
                text: "Deals",
                onPressed: () => pushDealsPage(context),
                padding: EdgeInsets.symmetric(horizontal: 35),
              ),
              SizedBox(width: 30),
              OrangeElevatedButton(
                text: "Investors",
                onPressed: () => pushInvestorsPage(context),
              ),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
