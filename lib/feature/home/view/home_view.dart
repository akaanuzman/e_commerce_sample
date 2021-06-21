import '../../../core/base/base_stateless.dart';
import '../viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';

class HomeView extends BaseStateless {
  final HomeViewModel _viewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discover",
          style: context.textTheme.headline5!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          ActionChip(
            label: Text("0.0\$"),
            avatar: Icon(Icons.shopping_bag),
            onPressed: () {},
          )
        ],
      ),
      body: Observer(
        builder: (_) => GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: _viewModel.items.length,
          itemBuilder: (context, index) => Card(
            child: Observer(builder: (_) {
              return Stack(
                children: [
                  ListTile(
                    contentPadding: context.paddingLow,
                    title: Padding(
                      padding: context.horizontalPaddingLow,
                      child: Image.network(
                        _viewModel.items[index].image ?? "",
                        width: context.dynamicWidth(0.2),
                        height: context.dynamicHeight(0.1),
                      ),
                    ),
                    subtitle: Column(
                      children: [
                        context.emptySizedHeightBoxLow,
                        Text(
                          _viewModel.items[index].title ?? "",
                          maxLines: 2,
                        ),
                        Text(
                          "Price: ${_viewModel.items[index].price.toString()}\$",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_bag),
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
