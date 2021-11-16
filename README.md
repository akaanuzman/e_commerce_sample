# 🔥 Weather App

## 📱 State Management
I used provider state management in this proeject.
<img src="https://koenig-media.raywenderlich.com/uploads/2019/11/provider_tree.png" width=800 height=500>

```dart
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
```

## 📚 Software Architectural Pattern
I used MVVM software architectural pattern in this project.
<br>

<img src="https://api.hackathonturkiye.com/media/hosting/images/mvvm.jpg">

## 🎁 Packages 
I used the "kartal" package in this project because it provides convenience in design.
<br/>
If you want to reach the ["kartal"](https://pub.dev/packages/kartal) package:
<br/>
<br/>

## 🔍 Preview
### 💣 Home Preview
<a href="https://media.giphy.com/media/wMU3EjYDtIr5i3rMc7/giphy.gif"><img src="https://media.giphy.com/media/wMU3EjYDtIr5i3rMc7/giphy.gif" title="Home Preview"/></a>

### 💣 Basket Preview
<a href="https://media.giphy.com/media/J4YH0x5jwePOKWovHT/giphy.gif"><img src="https://media.giphy.com/media/J4YH0x5jwePOKWovHT/giphy.gif" title="Basket Preview"/></a>
