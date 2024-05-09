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

  int minutesUntilSeizeEnd = 0;

  bool get isPurchased => _isPurchased;
  void purchase() => _isPurchased = true;

  bool get hasManager => _hasManager;
  void hireManager() => _hasManager = true;

  bool get isSeized => minutesUntilSeizeEnd == 0 ? false : true;
  void seizeProcess(int hoursSeized) {
    minutesUntilSeizeEnd = hoursSeized;
    late Timer timer = Timer.periodic(
      const Duration(minutes: 1),
      (timer) {
        minutesUntilSeizeEnd--;
      },
    );
    Timer(
      Duration(minutes: minutesUntilSeizeEnd),
      () {
        timer.cancel();
        minutesUntilSeizeEnd == 0;
      },
    );
  }

  double get effectiveMoneyPerClick =>
      isSeized ? 0 : baseMoneyPerClick * currentMultiplier;
  double get effectivePerSecond =>
      isSeized ? 0 : baseMoneyPerSecond * currentMultiplier;
}
