import '../../../core/base/base_stateless.dart';
import '../../../core/components/text/head_line5_text.dart';
import '../../../product/components/item_card.dart';
import '../../../product/manager/shop_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kartal/kartal.dart';

class BasketView extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: context.watch<ShopManager>().shopPhotoItems.isEmpty
          ? _buildEmptyBasket(context)
          : _buildFullBasket(context),
    );
  }

  AppBar get _buildAppBar => AppBar(
      title: Headline5Text(
          data: basketStringConstants.myBasket, fontWeight: FontWeight.bold),
    );

  Center _buildEmptyBasket(BuildContext context) => Center(
        child: Text(
          basketStringConstants.myBasketIsEmpty,
          style: context.textTheme.subtitle1,
        ),
      );

  ListView _buildFullBasket(BuildContext context) => ListView.builder(
        itemCount: context.watch<ShopManager>().shopPhotoItems.length,
        itemBuilder: (context, index) => ItemCard(
            viewModel: context.watch<ShopManager>().shopPhotoItems[index]),
      );
}
