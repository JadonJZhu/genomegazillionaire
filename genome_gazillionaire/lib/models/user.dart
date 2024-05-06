class User {
  User({required this.username, required this.iconFilePath});

  final String username;
  final String iconFilePath;
  double balance = 5.0;

  /*double get balance {
    // Every second:
    // return balance += sumeffectivePerSecond*(1-sumProftsPercent)
  }*/
}
