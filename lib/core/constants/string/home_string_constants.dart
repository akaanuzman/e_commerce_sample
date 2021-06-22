class HomeStringConstants {
  static HomeStringConstants? _instance;
  static HomeStringConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = HomeStringConstants.init();
      return _instance!;
    }
  }

  HomeStringConstants.init();

  final String title = "Discover";
}
