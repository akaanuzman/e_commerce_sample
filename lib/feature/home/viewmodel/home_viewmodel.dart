import 'package:e_commerce_sample/core/init/network/network_manager.dart';
import 'package:e_commerce_sample/feature/home/model/home_model.dart';
import 'package:e_commerce_sample/feature/home/service/IProductService.dart';
import 'package:e_commerce_sample/feature/home/service/product_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
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
