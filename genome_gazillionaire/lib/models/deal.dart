class Deal {
  Deal(
      {required this.corporationName,
      required this.description,
      required this.iconFilePath, 
      required this.processIndex,
      required this.cost, 
      required this.multiplierValue});

  String corporationName;
  String description;
  String iconFilePath;

  int processIndex;
  double cost;
  int multiplierValue;
  var isPurchased = false;

}
