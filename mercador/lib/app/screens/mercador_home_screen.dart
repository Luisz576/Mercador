import 'package:flutter/material.dart';
import 'package:mercador/app/shared/app_colors.dart';
import 'package:mercador/app/widgets/mercador_app_bar.dart';

class MercadorHomeScreen extends StatefulWidget {
  const MercadorHomeScreen({super.key});

  @override
  State<MercadorHomeScreen> createState() => _MercadorHomeScreenState();
}

class _MercadorHomeScreenState extends State<MercadorHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(),
      appBar: mercadorAppBar(),
      backgroundColor: AppColors.grayColor,
      body: LayoutBuilder(
        builder: (context, constraints){
          return const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
            ],
          );
        },
      )
    );
  }
}