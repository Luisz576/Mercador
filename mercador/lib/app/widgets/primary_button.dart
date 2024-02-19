import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mercador/app/shared/app_colors.dart';
import 'package:mercador/app/widgets/inherited/app_metrics_inherited.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final bool isLoading;

  const PrimaryButton(this.text, this.onPressed, this.isLoading, {super.key});

  @override
  Widget build(BuildContext context) {
    final appMetrictsInherited = AppMetrictsInherited.of(context);

    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 0, vertical: 0)),
        backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: isLoading ? const CircularProgressIndicator(
          color: AppColors.whiteColor,
        ) : Text(text,
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            fontSize: appMetrictsInherited.mediumTextSize,
            color: AppColors.whiteColor
          ),
        ),
      )
    );
  }
}