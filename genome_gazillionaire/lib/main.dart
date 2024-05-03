import 'package:flutter/material.dart';
import 'views/facilitypage/facility_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FacilityPage(),
    );
  }
}