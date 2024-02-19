class Session{
  final String _username, _email, _token;

  String get username => _username;
  String get email => _email;
  String get token => _token;

  Session.login(this._username, this._email, this._token);

  bool logged(){
    return _username.isNotEmpty && _email.isNotEmpty && _token.isNotEmpty;
  }
}