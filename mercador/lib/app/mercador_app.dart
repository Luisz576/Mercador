import 'package:flutter/material.dart';
import 'package:mercador/app/screens/mercador_home_screen.dart';
import 'package:mercador/app/screens/mercador_login_screen.dart';
import 'package:mercador/app/widgets/inherited/app_metrics_inherited.dart';
import 'package:mercador/core/service/session_service.dart';
import 'package:signals/signals_flutter.dart';

class MercadorApp extends StatelessWidget {
  const MercadorApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mercador",
      home: AppMetrictsInherited(
        isMobile: isMobile,
        child: SessionService.instance.logged.watch(context) ? const MercadorHomeScreen() : const MercadorLoginScreen(),
      ),
    );
  }
}