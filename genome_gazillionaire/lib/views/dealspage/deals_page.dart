import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/deals_list_view.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/small_text_dialog_box.dart';
import 'package:genome_gazillionaire/views/globals/global_functions.dart';
import 'package:genome_gazillionaire/views/globals/global_styles.dart';

class DealsPage extends StatefulWidget {
  const DealsPage({super.key});

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {
  final user = userData;

  void signDeal(Deal deal) {
    setState(() {
      if (!deal.process.isPurchased) {
        showDialog(
          context: context,
          builder: (context) {
            return SmallTextDialogBox(
                text: Text(
              "You have not purchased this process!",
              style: blackSubtitleStyle,
            ));
          },
        );
      } else if (user.balance < deal.cost) {
        Navigator.pop(context);
        pushInsufficientFundsDialog(context);
      } else if (!deal.isPurchased) {
        Navigator.pop(context);
        deal.purchase();
        user.balance -= deal.cost;

        if (deal.process.isSeized) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SmallTextDialogBox.deal(
                  text: Text(
                    "${deal.title} seized ${deal.process.title} for ${deal.loopholeOwnershipHours} hours!",
                    style: blackSubtitleStyle,
                    textAlign: TextAlign.center,
                  ),
                );
              });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Deals: \$${user.balance.toStringAsPrecision(8)}", style: pageTitleStyle),
        backgroundColor: const Color.fromARGB(255, 231, 167, 107),
      ),
      body: DealsListView(signDeal: signDeal),
    );
  }
}
