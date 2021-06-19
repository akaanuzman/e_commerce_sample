import 'package:dio/dio.dart';
import 'package:e_commerce_sample/feature/home/model/home_model.dart';

abstract class IProductService {
  final Dio dio;

  IProductService(this.dio);

  Future<List<HomeModel>> fetchAllTask();
}
