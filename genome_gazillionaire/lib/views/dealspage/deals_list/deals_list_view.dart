import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/deal_data.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/deal_block.dart';

class DealsListView extends StatelessWidget {
  DealsListView({super.key});

  final dealsList = dealData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dealsList.length,
      itemBuilder:(context, index) => DealBlock(deal: dealsList[index]),
    );
  }
}