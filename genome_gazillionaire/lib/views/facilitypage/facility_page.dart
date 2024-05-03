// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/data/process_data.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/views/facilitypage/process_list.dart';

class FacilityPage extends StatefulWidget {
  const FacilityPage({super.key});

  @override
  State<FacilityPage> createState() => _FacilityPageState();
}

class _FacilityPageState extends State<FacilityPage> {
  final user = userData;

  final processList = processData;

  void completeProcess(double revenue) {
    setState(() => user.balance += revenue);
  }

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
      body: ProcessList(processList: processList, completeProcess: completeProcess),
    );
  }
}
