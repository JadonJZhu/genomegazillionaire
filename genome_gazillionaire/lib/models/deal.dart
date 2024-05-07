import 'package:genome_gazillionaire/models/entity.dart';

class Deal extends Entity {
  Deal(
      {required super.title,
      required super.description,
      required super.avatarFilePath, 
      required this.processIndex,
      required this.cost, 
      required this.multiplierValue});

  int processIndex;
  double cost;
  int multiplierValue;
  var isPurchased = false;

}
