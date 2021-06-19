import 'package:flutter/material.dart';

import 'IAppTheme.dart';

class AppTheme extends IAppTheme {
  static AppTheme? _instance;
  static AppTheme get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = AppTheme.init();
      return _instance!;
    }
  }

  AppTheme.init();

  @override
  ThemeData get theme => ThemeData(
        colorScheme: _colorScheme,
        iconTheme: IconThemeData(color: Colors.white),
        tabBarTheme: _tabBarTheme,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red
        )
      );

  ColorScheme get _colorScheme => ColorScheme(
        primary: Colors.white,
        primaryVariant: Colors.white10,
        secondary: Colors.yellow,
        secondaryVariant: Colors.deepPurple,
        surface: Colors.red,
        background: Colors.black,
        error: Colors.teal.shade800,
        onPrimary: Colors.pink.shade800,
        onSecondary: Colors.deepPurple.shade900,
        onSurface: Colors.lightBlue,
        onBackground: Colors.brown,
        onError: Colors.pink.shade300,
        brightness: Brightness.light,
      );

  TabBarTheme get _tabBarTheme => TabBarTheme(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
      );
}
