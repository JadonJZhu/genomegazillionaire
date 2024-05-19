class User {
  User({required this.username, required this.iconFilePath});

  final String username;
  final String iconFilePath;
  double balance = 10000000000000.0;
  int numLawyers = 0;

  double get lawyerPrice => 1 + numLawyers * 1.5;
}
