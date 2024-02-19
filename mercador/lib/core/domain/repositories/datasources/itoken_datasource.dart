abstract class ITokenDatasource{
  Future<String> load();
  Future<bool> save(String token);
}