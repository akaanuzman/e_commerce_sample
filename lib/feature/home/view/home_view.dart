import 'package:e_commerce_sample/core/components/text/bold_text.dart';
import 'package:e_commerce_sample/core/components/text/head_line5_text.dart';
import 'package:e_commerce_sample/core/constants/string/home_string_constants.dart';

import '../viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeViewModel _viewModel = HomeViewModel();

  HomeStringConstants get homeStringContants => HomeStringConstants.init();

  bool isIncrementOpen = false;

  void isIncrementChange(){
    setState(() {
      isIncrementOpen = !isIncrementOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Headline5Text(
          data: homeStringContants.title,
          fontWeight: FontWeight.bold,
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
                        BoldText(
                          data:
                              "Price: ${_viewModel.items[index].price.toString()}\$",
                        ),
                        IconButton(
                          onPressed: isIncrementChange,
                          icon: Icon(Icons.shopping_bag),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height:
                          isIncrementOpen ? context.dynamicHeight(0.125) : 0,
                      width: isIncrementOpen ? context.dynamicHeight(0.05) : 0,
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                            ),
                            Spacer(),
                            Expanded(
                              flex: 4,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove),
                              ),
                            ),
                          ],
                        ),
                      ),
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
