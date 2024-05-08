import 'dart:math';
import 'package:genome_gazillionaire/data/process_data.dart';
import 'package:genome_gazillionaire/data/user_data.dart';
import 'package:genome_gazillionaire/models/entity_model.dart';
import 'package:genome_gazillionaire/models/process_model.dart';

class Deal extends Entity {
  Deal({
    required super.title,
    required super.description,
    required super.avatarFilePath,
    required this.negotiationDescription,
    required this.processIndex,
    required this.cost,
    required this.multiplierValue,
    required this.baseLoopholePercent,
    required this.loopholeOwnershipHours,
  });

  final String negotiationDescription;
  final int processIndex;
  final double cost;
  final int multiplierValue;
  final int baseLoopholePercent;
  final int loopholeOwnershipHours;

  bool _isPurchased = false;

  bool get isPurchased => _isPurchased;

  void purchase() {
    _isPurchased = true;
    process.currentMultiplier *= multiplierValue;

    final double random = Random().nextDouble() * 100;
    if (random < effectiveLoopholePercent) {
      process.seizeProcess(loopholeOwnershipHours);
    }
  }

  int get effectiveLoopholePercent => baseLoopholePercent + userData.numLawyers;
  Process get process => processData[processIndex];

}
