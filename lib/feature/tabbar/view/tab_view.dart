import '../../../core/base/base_stateless.dart';
import '../../home/view/home_view.dart';
import '../model/tab_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

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
        child: Scaffold(),
      )
    ];
    return DefaultTabController(
      length: _items.length,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
            indicatorColor: context.colorScheme.background,
            tabs: List.generate(
              _items.length,
              (index) => Tab(
                text: _items[index].title,
                icon: Icon(_items[index].icon),
              ),
            ),
          ),
        ),
        body: _buildTabBarView(_items),
      ),
    );
  }

  TabBarView _buildTabBarView(List<TabModel> models) =>
      TabBarView(children: models.map((e) => e.child).toList());
}
