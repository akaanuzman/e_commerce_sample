import '../constants/string/basket_string_constants.dart';
import 'package:flutter/material.dart';

import '../constants/string/tabbar_string_constants.dart';

abstract class BaseStateless extends StatelessWidget {
  TabBarStringConstants get tabBarStringConstants =>
      TabBarStringConstants.init();

  BasketStringConstants get basketStringConstants =>
      BasketStringConstants.init();
}
