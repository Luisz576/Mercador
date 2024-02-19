import 'package:flutter/material.dart';
import 'package:mercador/app/screens/mercador_splash_screen.dart';
import 'package:mercador/app/widgets/inherited/app_metrics_inherited.dart';

class MercadorSplashApp extends StatelessWidget {
  const MercadorSplashApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mercador",
      home: AppMetrictsInherited(
        isMobile: isMobile,
        child: const MercadorSplashScreen(),
      )
    );
  }
}