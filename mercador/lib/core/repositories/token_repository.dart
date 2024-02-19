import 'package:mercador/core/domain/repositories/datasources/itoken_datasource.dart';
import 'package:mercador/core/domain/repositories/itoken_repository.dart';
import 'package:mercador/core/repositories/datasources/offline_token_datasource.dart';

class TokenRepository implements ITokenRepository{
  static final TokenRepository instance = TokenRepository._(OfflineTokenDatasource.instance);

  final ITokenDatasource tokenDatasource;
  TokenRepository._(this.tokenDatasource);

  @override
  Future<bool> saveToken(String token) async {
    if(token.isNotEmpty){
      return tokenDatasource.save(token);
    }
    return false;
  }

  @override
  Future<String> token() async {
    return tokenDatasource.load();
  }
}