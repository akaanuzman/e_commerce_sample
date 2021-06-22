import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/init/network/network_manager.dart';
import '../model/home_model.dart';
import '../service/IProductService.dart';
import '../service/product_service.dart';

part 'home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  BuildContext? context;
  late IProductService productService;

  @observable
  List<HomeModel> items = [];

  _HomeViewModelBase() {
    productService = ProductService(NetworkManager.instance.dio);
  }

  void setContext(BuildContext context) {
    this.context = context;
    fetchItems();
  }

  @action
  Future<void> fetchItems() async {
    items = await productService.fetchAllTask();
  }
}
