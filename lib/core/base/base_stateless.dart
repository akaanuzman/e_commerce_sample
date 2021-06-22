import '../constants/string/tabbar_string_constants.dart';
import 'package:flutter/material.dart';

abstract class BaseStateless extends StatelessWidget {
  TabBarStringConstants get tabBarStringConstants =>
      TabBarStringConstants.init();
}
