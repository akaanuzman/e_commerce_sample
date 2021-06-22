import 'package:e_commerce_sample/core/constants/string/tabbar_string_constants.dart';
import 'package:flutter/material.dart';

abstract class BaseStateless extends StatelessWidget {
  TabBarStringConstants get tabBarStringConstants =>
      TabBarStringConstants.init();
}
