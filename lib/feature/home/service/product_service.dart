import 'dart:io';

import 'package:dio/dio.dart';
import '../model/home_model.dart';
import 'IProductService.dart';
import 'product_service_endpoints.dart';

class ProductService extends IProductService {
  ProductService(Dio dio) : super(dio);

  @override
  Future<List<HomeModel>> fetchAllTask() async {
    final response = await dio.get(ProductServiceEndPoints.PRODUCTS.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => HomeModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
