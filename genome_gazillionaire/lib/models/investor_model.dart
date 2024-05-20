import 'package:genome_gazillionaire/models/entity_model.dart';

class Investor extends Entity {

    Investor({required super.title, 
    required super.description, 
    required super.avatarFilePath, 
    required this.investmentDescription,
    required this.profitsPercent, 
    required this.offeredMoney, 
    required this.minDiceRoll});

    final String investmentDescription;
    final int profitsPercent;
    final int offeredMoney;    
    final int minDiceRoll;

    bool _isPurchased = false;
    bool get isPurchased => _isPurchased;
    bool purchase() => _isPurchased = true;
      /* final int random = Random().nextInt(6) + 1;
      if (random >= minDiceRoll && _triesLeft > 0) {
        _isPurchased = true;
        userData.balance += offeredMoney;
        userData.percentOwned -= profitsPercent;
        processData.forEach((process) {
          process.currentMultiplier *= (1 - profitsPercent/100);
        });
        _triesLeft = 0;
        return true;
      } else {
        if (_triesLeft != 0)
          decTries();
        return false;
      } */
    
    int _triesLeft = 4;
    int get triesLeft => _triesLeft;
    void decTries() => _triesLeft -= 1;
    void eliminateTries() => _triesLeft = 0;
}