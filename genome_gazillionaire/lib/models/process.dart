class Process {
  Process(
      {required this.name,
      required this.description,
      required this.iconFilePath,
      required this.baseMoneyPerSecond,
      required this.moneyPerClick,
      required this.managerCost});

  String name;
  String description;
  String iconFilePath;

  double baseMoneyPerSecond;
  double moneyPerClick;
  int currentMultiplier = 1;

  bool hasManager = false;
  double managerCost;

  double get effectivePerSecond =>
      hasManager ? baseMoneyPerSecond * currentMultiplier : 0;
}
