import '../../feature/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ShopManager extends ChangeNotifier {
  List<HomeModel> shopPhotoItems = [];

  double totalMoney = 0;

  void addShopItem(HomeModel model) {
    model.count++;
    shopPhotoItems.add(model);
    sumTotalMoney();
    notifyListeners();
  }

  void removeShopItem(HomeModel model) {
    model.count = 0;
    shopPhotoItems.remove(model);
    sumTotalMoney();
    notifyListeners();
  }

  void incrementItem(HomeModel model) {
    if (!shopPhotoItems.contains(model)) {
      Logger().wtf("Item has not found !");
    } else {
      shopPhotoItems.singleWhere((element) => element.id == model.id).count++;
    }
    sumTotalMoney();
    notifyListeners();
  }

  void deIncrementItem(HomeModel model) {
    if (!shopPhotoItems.contains(model)) {
      Logger().wtf("Item has not found !");
    } else {
      shopPhotoItems.singleWhere((element) => element.id == model.id).count--;
    }
    sumTotalMoney();
    notifyListeners();
  }

  void sumTotalMoney() {
    totalMoney = shopPhotoItems.fold(
        0,
        (previousValue, element) =>
            previousValue + element.price! * element.count);
    notifyListeners();
  }
}
