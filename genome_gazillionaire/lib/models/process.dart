import 'package:genome_gazillionaire/models/entity.dart';

class Process extends Entity {
  Process(
      {required super.title,
      required super.description,
      required super.avatarFilePath,
      required this.cost,
      required this.baseMoneyPerSecond,
      required this.moneyPerClick,
      required this.managerCost});


  final double cost;
  var _isPurchased = false;
  final double baseMoneyPerSecond;
  final double moneyPerClick;
  final int currentMultiplier = 1;

  var _hasManager = false;
  final double managerCost;

  bool get isPurchased => _isPurchased;
  void purchase() => _isPurchased = true;

  bool get hasManager => _hasManager;
  void hireManager() => _hasManager = true;

  double get effectivePerSecond => baseMoneyPerSecond * currentMultiplier;
}
