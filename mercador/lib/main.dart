import 'package:flutter/material.dart';
import 'package:mercador/app/mercador_app.dart';
import 'package:mercador/app/mercador_splash_app.dart';
import 'package:mercador/core/service/session_service.dart';

main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MercadorSplashApp());

  await SessionService.instance.loginWithToken();

  runApp(const MercadorApp());
}