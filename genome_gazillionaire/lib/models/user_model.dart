class User {
  User({required this.username, required this.iconFilePath});

  final String username;
  final String iconFilePath;
  double balance = 1000;
  int numLawyers = 0;
  int percentOwned = 100;

  double get lawyerPrice => 1 + numLawyers * 1.5;
}
