import 'package:genome_gazillionaire/models/entity.dart';

class Investor extends Entity {

    Investor({required super.title, 
    required super.description, 
    required super.avatarFilePath, 
    required this.profitsPercent, 
    required this.offeredMoney, 
    required this.minDiceRoll});

    var isPurchased = false;
    int profitsPercent;
    double offeredMoney;    
    int minDiceRoll;
}