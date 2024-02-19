import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mercador/app/shared/app_colors.dart';
import 'package:mercador/app/widgets/inherited/app_metrics_inherited.dart';
import 'package:mercador/app/widgets/named_input.dart';
import 'package:mercador/app/widgets/primary_button.dart';
import 'package:mercador/core/service/session_service.dart';
import 'package:signals/signals_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _username = "", _password = "";

  _login(){
    if(_username.isNotEmpty && _password.isNotEmpty){
      SessionService.instance.loginWithUsernameAndPassword(_username, _password);
    }
  }

  @override
  Widget build(BuildContext context) {
    final appMetrictsInherited = AppMetrictsInherited.of(context);

    return Form(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 44),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NamedInput(
                onChanged: (value){
                  _username = value;
                },
                title: "E-mail, telefone ou usuário",
                hintText: "Escreva aqui...",
                fontSize: appMetrictsInherited.smallTextSize,
              ),
              const SizedBox(height: 20,),
              NamedInput(
                onChanged: (value){
                  _password = value;
                },
                title: "Senha",
                hintText: "********",
                obscureText: true,
                fontSize: appMetrictsInherited.smallTextSize,
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryButton("Login",
                    _login,
                    SessionService.instance.logging.watch(context)
                  ),
                  TextButton(
                    onPressed: (){
                      // nothing
                    },
                    child: Text("Criar conta",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: appMetrictsInherited.mediumTextSize,
                        color: AppColors.primaryColor
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}