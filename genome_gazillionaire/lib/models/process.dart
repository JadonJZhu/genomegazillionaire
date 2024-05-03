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
  final double baseMoneyPerSecond;
  final double moneyPerClick;
  final int currentMultiplier = 1;

  var hasManager = false;
  final double managerCost;

  double get effectivePerSecond =>
      hasManager ? baseMoneyPerSecond * currentMultiplier : 0;
}
