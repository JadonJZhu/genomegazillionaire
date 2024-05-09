import 'dart:async';

import 'package:genome_gazillionaire/models/entity_model.dart';

class Process extends Entity {
  Process(
      {required super.title,
      required super.description,
      required super.avatarFilePath,
      required this.cost,
      required this.baseMoneyPerSecond,
      required this.baseMoneyPerClick,
      required this.managerCost});

  final double cost;
  bool _isPurchased = false;
  final double baseMoneyPerSecond;
  final double baseMoneyPerClick;
  int currentMultiplier = 1;

  bool _hasManager = false;
  final double managerCost;

  int secondsUntilSeizeEnd = 0;

  bool get isPurchased => _isPurchased;
  void purchase() => _isPurchased = true;

  bool get hasManager => _hasManager;
  void hireManager() => _hasManager = true;

  bool get isSeized => secondsUntilSeizeEnd == 0 ? false : true;

  void seizeProcess(int hoursSeized) {
    secondsUntilSeizeEnd = hoursSeized * 3600;
  }

  String get seizedFormattedTime =>
      Duration(seconds: secondsUntilSeizeEnd).toString().split('.').first;

  double get effectiveMoneyPerClick =>
      isSeized ? 0 : baseMoneyPerClick * currentMultiplier;
  double get effectivePerSecond =>
      isSeized ? 0 : baseMoneyPerSecond * currentMultiplier;
}
