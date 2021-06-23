import 'package:flutter/material.dart';

import '../constants/string/tabbar_string_constants.dart';

abstract class BaseStateless extends StatelessWidget {
  TabBarStringConstants get tabBarStringConstants =>
      TabBarStringConstants.init();
}
