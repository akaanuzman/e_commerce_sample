import 'product/manager/shop_manager.dart';
import 'package:provider/provider.dart';

import 'core/init/theme/app_theme.dart';
import 'feature/tabbar/view/tab_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ShopManager>(
            create: (context) => ShopManager(),
          )
          // Provider<SomethingElse>(create: (_) => SomethingElse()),
          // Provider<AnotherThing>(create: (_) => AnotherThing()),
        ],
        child: MyApp(),
      ),
    );

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
