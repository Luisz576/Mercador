abstract class ITokenRepository{
  Future<String> token();
  Future<bool> saveToken(String token);
}