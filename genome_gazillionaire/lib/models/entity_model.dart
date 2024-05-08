abstract class Entity {
  Entity(
      {required this.title,
      required this.description,
      required this.avatarFilePath});

  final String title;
  final String description;
  final String avatarFilePath;
}