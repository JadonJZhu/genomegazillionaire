import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/insufficient_funds_dialog.dart';

void pushInsufficientFundsDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) => const InsufficientFundsDialog());
}
