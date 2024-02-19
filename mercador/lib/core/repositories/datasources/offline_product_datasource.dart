import 'package:mercador/core/domain/models/product_model.dart';
import 'package:mercador/core/domain/repositories/datasources/iproduct_datasource.dart';

class OfflineProductDatasource implements IProductDatasource{
  static final OfflineProductDatasource instance = OfflineProductDatasource._();

  OfflineProductDatasource._();

  @override
  Future<List<ProductModel>> loadProducts({bool highlight = false, bool offer = false}) async {
    await Future.delayed(const Duration(seconds: 1));
    return [];
  }

  @override
  Future<List<ProductModel>> loadUserRecommendation() async {
    await Future.delayed(const Duration(seconds: 1));
    return [];
  }
}