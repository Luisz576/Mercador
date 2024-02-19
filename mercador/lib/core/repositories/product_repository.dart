import 'package:mercador/core/domain/models/product_model.dart';
import 'package:mercador/core/domain/repositories/datasources/iproduct_datasource.dart';
import 'package:mercador/core/domain/repositories/iproduct_repository.dart';
import 'package:mercador/core/repositories/datasources/offline_product_datasource.dart';

class ProductRepository implements IProductRepository{
  static final ProductRepository instance = ProductRepository._(OfflineProductDatasource.instance);

  final IProductDatasource _productDatasource;
  ProductRepository._(this._productDatasource);

  @override
  Future<List<ProductModel>> loadHighlights() {
    return _productDatasource.loadProducts(highlight: true);
  }

  @override
  Future<List<ProductModel>> loadOffers() {
    return _productDatasource.loadProducts(offer: true);
  }

  @override
  Future<List<ProductModel>> loadRecommendations() {
    return _productDatasource.loadUserRecommendation();
  }
}