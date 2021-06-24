import '../../basket/view/basket_view.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/base/base_stateless.dart';
import '../../home/view/home_view.dart';
import '../model/tab_model.dart';

class TabView extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    final List<TabModel> _items = [
      TabModel(
        title: tabBarStringConstants.home,
        icon: Icons.home_filled,
        child: HomeView(),
      ),
      TabModel(
        title: tabBarStringConstants.basket,
        icon: Icons.shopping_bag,
        child: BasketView(),
      )
    ];
    return DefaultTabController(
      length: _items.length,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: _buildTabBar(context, _items),
        ),
        body: _buildTabBarView(_items),
      ),
    );
  }

  TabBar _buildTabBar(BuildContext context, List<TabModel> _items) => TabBar(
        indicatorColor: context.colorScheme.background,
        tabs: _buildTabs(_items),
      );

  List<Widget> _buildTabs(List<TabModel> _items) => List.generate(
        _items.length,
        (index) => Tab(
          text: _items[index].title,
          icon: Icon(_items[index].icon),
        ),
      );

  TabBarView _buildTabBarView(List<TabModel> models) =>
      TabBarView(children: models.map((e) => e.child).toList());
}
