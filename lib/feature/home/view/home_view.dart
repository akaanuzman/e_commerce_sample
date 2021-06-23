import '../../../product/manager/shop_manager.dart';

import '../../../core/components/text/head_line5_text.dart';
import '../../../core/constants/string/home_string_constants.dart';
import '../../../product/components/item_card.dart';

import '../viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel _viewModel = HomeViewModel();

  HomeStringConstants get homeStringContants => HomeStringConstants.init();

  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle,
        actions: [_buildActionChip(context)],
      ),
      body: _buildBody,
    );
  }

  Headline5Text get _buildAppBarTitle => Headline5Text(
        data: homeStringContants.title,
        fontWeight: FontWeight.bold,
      );

  ActionChip _buildActionChip(BuildContext context) => ActionChip(
        label: Text('\$ ${context.watch<ShopManager>().totalMoney}'),
        avatar: Icon(Icons.shopping_bag),
        onPressed: () {},
      );

  Observer get _buildBody => Observer(
        builder: (_) => GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: _viewModel.items.length,
          itemBuilder: (context, index) =>
              ItemCard(viewModel: _viewModel.items[index]),
        ),
      );
}
