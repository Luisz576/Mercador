import 'package:mercador/core/domain/data/session.dart';
import 'package:mercador/core/domain/repositories/itoken_repository.dart';
import 'package:mercador/core/repositories/token_repository.dart';
import 'package:signals/signals_flutter.dart';

class SessionService{
  static final SessionService instance = SessionService._(TokenRepository.instance);
  
  final ITokenRepository tokenRepository;
  SessionService._(this.tokenRepository);

  final session = signal<Session?>(null);
  late final logged = computed(() => session() is Session && session()!.logged());
  final logging = signal(false);

  Future loginWithToken() async {
    logging.value = true;
    final token = await tokenRepository.token();
    if(token.isNotEmpty){
      await Future.delayed(const Duration(seconds: 5));
      _login("teste", "teste@teste.com", token);
    }
    logging.value = false;
  }

  _login(String username, String email, String token){
    if(username.isNotEmpty && email.isNotEmpty && token.isNotEmpty){
      session.value = Session.login(username, email, token);
      
      tokenRepository.token().then((value) {
        if(token != value){
          tokenRepository.saveToken(token);
        }
      });
    }
  }

  logout(){
    session.value = null;
  }

  Future loginWithUsernameAndPassword(String username, String password) async {
    logging.value = true;
    if(username.isNotEmpty && password.isNotEmpty){
      await Future.delayed(const Duration(seconds: 3));
      _login(username, "teste@teste.com", "1234");
    }
    logging.value = false;
  }
}