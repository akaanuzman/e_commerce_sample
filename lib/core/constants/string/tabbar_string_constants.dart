class TabBarStringConstants {
  static TabBarStringConstants? _instance;
  static TabBarStringConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = TabBarStringConstants.init();
      return _instance!;
    }
  }

  TabBarStringConstants.init();

  final String home = "Home";
  final String basket = "Basket";
}
