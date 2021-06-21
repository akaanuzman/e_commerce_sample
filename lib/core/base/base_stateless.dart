import '../constants/string/tabbar_string_constants.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseStateless extends StatelessWidget {
  TabBarStringConstants get tabBarStringConstants => TabBarStringConstants.init();
}
