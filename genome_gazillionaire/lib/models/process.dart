class Process {
  Process(
      {required this.name,
      required this.description,
      required this.iconFilePath,
      required this.cost,
      required this.baseMoneyPerSecond,
      required this.moneyPerClick,
      required this.managerCost});

  final String name;
  final String description;
  final String iconFilePath;

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
