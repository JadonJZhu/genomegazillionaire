import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/deal_data.dart';
import 'package:genome_gazillionaire/models/deal_model.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/deal_block.dart';

class DealsListView extends StatelessWidget {
  DealsListView({super.key, required this.signDeal });

  final dealsList = dealData;

  final void Function(Deal) signDeal;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: dealsList.length,
        itemBuilder: (context, index) =>
            DealBlock(deal: dealsList[index], signDeal: signDeal),
      ),
    );
  }
}

