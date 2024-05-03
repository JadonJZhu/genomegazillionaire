// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_column.dart';

class FacilityPage extends StatelessWidget {
  FacilityPage({super.key});

  final user = userData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text("Genome Gazillionaire \$${user.balance.toString()}"),
        leading: CircleAvatar(
          backgroundImage: AssetImage("../../assets/images/1.png"),
        ),
        backgroundColor: Colors.green,
      ),
      body: ProcessColumn(),
    );
  }
}
