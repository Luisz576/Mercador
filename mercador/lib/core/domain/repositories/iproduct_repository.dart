import 'package:mercador/core/domain/models/product_model.dart';

abstract class IProductRepository{
  Future<List<ProductModel>> loadHighlights();
  Future<List<ProductModel>> loadOffers();
  Future<List<ProductModel>> loadRecommendations();
}