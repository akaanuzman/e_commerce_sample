import 'package:e_commerce_sample/core/base/base_stateless.dart';
import 'package:e_commerce_sample/feature/home/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';

class HomeView extends BaseStateless {
  final HomeViewModel _viewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.get_app),
            );
          })),
        ],
      ),
    );
  }
}
