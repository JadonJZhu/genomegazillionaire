import 'package:genome_gazillionaire/models/entity_model.dart';

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
  bool _isPurchased = false;
  final double baseMoneyPerSecond;
  final double moneyPerClick;
  int currentMultiplier = 1;

  bool _hasManager = false;
  final double managerCost;

  bool _isSeized = false;

  bool get isPurchased => _isPurchased;
  void purchase() => _isPurchased = true;

  bool get hasManager => _hasManager;
  void hireManager() => _hasManager = true;

  bool get isSeized => _isSeized;
  void seizeProcess(int hoursSeized) {
    _isSeized = true;
    Future.delayed(Duration(hours: hoursSeized), () {
      _isSeized = false;
    });
  }

  double get effectivePerSecond =>
      isSeized ? 0 : baseMoneyPerSecond * currentMultiplier;
}
