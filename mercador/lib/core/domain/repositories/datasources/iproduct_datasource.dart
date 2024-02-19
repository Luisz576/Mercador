import 'package:mercador/core/domain/models/product_model.dart';

abstract class IProductDatasource{
  Future<List<ProductModel>> loadProducts({bool highlight = false, bool offer = false});
  Future<List<ProductModel>> loadUserRecommendation();
}