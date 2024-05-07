import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/dealspage/deals_list/deals_list_view.dart';
import 'package:genome_gazillionaire/views/globals/globals_styles.dart';

class DealsPage extends StatefulWidget {
  const DealsPage({super.key});

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Deals", style: pageTitleStyle),
        backgroundColor: const Color.fromARGB(255, 231, 167, 107),
      ),
      body: DealsListView(),
    );
  }
}
