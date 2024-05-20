import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/investor_data.dart';
import 'package:genome_gazillionaire/models/investor_model.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_list/investor_block.dart';

class InvestorsListView extends StatelessWidget {
  InvestorsListView({super.key, required this.signInvestor});

  final investorsList = investorData;

  final void Function(Investor) signInvestor;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: investorsList.length,
      itemBuilder: (context, index) =>
          InvestorBlock(investor: investorsList[index], signInvestor: signInvestor),
    );
  }
}

