class Investor {

    Investor({required this.name, 
    required this.description, 
    required this.iconFilePath, 
    required this.profitsPercent, 
    required this.offeredMoney, 
    required this.minDiceRoll});

    String name;
    String description;
    String iconFilePath;

    var isPurchased = false;
    int profitsPercent;
    double offeredMoney;    
    int minDiceRoll;
}