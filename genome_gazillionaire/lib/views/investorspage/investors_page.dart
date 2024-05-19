import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/investor_model.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_list/investors_list_view.dart';
import 'package:genome_gazillionaire/views/investorspage/investors_list/pitch/maintain_ownership_dialog.dart';

class InvestorsPage extends StatefulWidget {
  const InvestorsPage({super.key});

  @override
  State<InvestorsPage> createState() => _InvestorsPageState();
}

class _InvestorsPageState extends State<InvestorsPage> {
  final user = userData;

  void signInvestor(Investor investor) {
    setState(() {
      
      if (user.percentOwned - investor.profitsPercent < 51) {
        Navigator.pop(context);
        pushMaintainOwnershipDialog(context);
      } else {
        Navigator.pop(context);
        investor.purchase();
      }
    });
  }

  
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 45, 171),
      appBar: AppBar(
        title: Text("Investors: \$${user.balance}", style: pageTitleStyle),
        backgroundColor: const Color.fromARGB(255, 7, 45, 171),
      ),
      body: InvestorsListView(signInvestor: signInvestor),
    );
  }
}
