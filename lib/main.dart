import 'package:e_commerce_sample/core/init/theme/app_theme.dart';
import 'package:e_commerce_sample/feature/tabbar/view/tab_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.instance.theme,
      home: TabView(),
    );
  }
}
