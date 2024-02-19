import 'package:mercador/core/domain/repositories/datasources/itoken_datasource.dart';

class OfflineTokenDatasource implements ITokenDatasource{
  static final OfflineTokenDatasource instance = OfflineTokenDatasource._();

  OfflineTokenDatasource._();

  @override
  Future<String> load() async {
    await Future.delayed(const Duration(seconds: 1));
    return "";
  }

  @override
  Future<bool> save(String token) async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}