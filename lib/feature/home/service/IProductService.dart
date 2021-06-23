import 'package:dio/dio.dart';

import '../model/home_model.dart';

abstract class IProductService {
  final Dio dio;

  IProductService(this.dio);

  Future<List<HomeModel>> fetchAllTask();
}
