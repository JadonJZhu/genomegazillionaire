import 'package:flutter/material.dart';
import 'package:genome_gazillionaire/models/entity.dart';
import 'package:genome_gazillionaire/views/globals/dialogs/description_dialog.dart';

class AvatarButton extends StatelessWidget {
  const AvatarButton({super.key, required this.entity});

  final Entity entity;

  void pushDescriptionView(BuildContext context, Entity entity) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DescriptionDialog(entity: entity);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushDescriptionView(context, entity),
      child: Container(
        height: 110,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: Image.asset(
            entity.avatarFilePath,
          ),
        ),
      ),
    );
  }
}
