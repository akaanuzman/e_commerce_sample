class BasketStringConstants {
  static BasketStringConstants? _instance;
  static BasketStringConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = BasketStringConstants.init();
      return _instance!;
    }
  }

  BasketStringConstants.init();

  final String myBasket = "My Basket";
  final String myBasketIsEmpty = "My basket is empty.";
}
