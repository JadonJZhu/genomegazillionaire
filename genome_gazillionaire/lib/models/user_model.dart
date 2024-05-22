import 'dart:math';

class User {
  User({required this.username, required this.iconFilePath});

  final String username;
  final String iconFilePath;
  double balance = 1000;

  int numLawyers = 0;
  final int maxLawyers = 9;

  int percentOwned = 100;

  double get lawyerPrice => 10000*pow(2, numLawyers).toDouble();

  String get balanceString => balance >= 1000000
      ? balance.toStringAsExponential(2)
      : balance.toStringAsFixed(2);
}
