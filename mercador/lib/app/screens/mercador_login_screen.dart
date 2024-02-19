import 'package:flutter/material.dart';
import 'package:mercador/app/shared/app_colors.dart';
import 'package:mercador/app/widgets/form/login_form.dart';

class MercadorLoginScreen extends StatelessWidget {
  const MercadorLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.grayColor
        ),
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints){
              return SizedBox(
                width: constraints.maxWidth / 1.2,
                child: const LoginForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}