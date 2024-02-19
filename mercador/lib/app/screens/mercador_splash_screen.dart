import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mercador/app/shared/app_colors.dart';
import 'package:mercador/app/widgets/inherited/app_metrics_inherited.dart';

class MercadorSplashScreen extends StatefulWidget {
  const MercadorSplashScreen({super.key});

  @override
  State<MercadorSplashScreen> createState() => _MercadorSplashScreenState();
}

class _MercadorSplashScreenState extends State<MercadorSplashScreen> {
  final animationDuration = const Duration(milliseconds: 1000);
  bool _animated = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((_) {
      setState((){
        _animated = true;
      });
    });
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appMetrictsInherited = AppMetrictsInherited.of(context);

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.blueWhiteColor,
              AppColors.secundaryBlueWhiteColor
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: AnimatedOpacity(
          opacity: _animated ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage("images/splash.png"),
                width: MediaQuery.of(context).size.width / 3,
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Mercador",
                style: GoogleFonts.nunito(
                  fontSize: appMetrictsInherited.bigTextSize,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                  color: AppColors.blackColor
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}