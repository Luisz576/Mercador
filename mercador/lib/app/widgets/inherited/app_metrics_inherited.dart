import 'package:flutter/material.dart';

class AppMetrictsInherited extends InheritedWidget {
  final bool isMobile;
  late final double smallIconSize, smallTextSize, mediumTextSize, bigTextSize;

  AppMetrictsInherited({required this.isMobile, required super.child, super.key}){
    smallIconSize = isMobile ? 20 : 40;
    smallTextSize = isMobile ? 14 : 20;
    mediumTextSize = isMobile ? 22 : 32;
    bigTextSize = isMobile ? 40 : 62;
  }

  static AppMetrictsInherited of(BuildContext context){
    final inherited = context.dependOnInheritedWidgetOfExactType<AppMetrictsInherited>();
    if(inherited == null){
      throw "No 'AppMetrictsInherited' founded in this context!";
    }
    return inherited;
  }

  @override
  bool updateShouldNotify(covariant AppMetrictsInherited oldWidget) {
    return isMobile != oldWidget.isMobile;
  }
}