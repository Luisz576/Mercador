import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mercador/app/shared/app_colors.dart';

class NamedInput extends StatelessWidget {
  final void Function(String) onChanged;
  final String hintText, title;
  final bool obscureText;
  final double? fontSize;

  const NamedInput({required this.title, required this.onChanged, required this.hintText, this.obscureText = false, this.fontSize, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title,
          style: GoogleFonts.nunito(
            color: AppColors.blackColor,
            fontSize: fontSize,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            fillColor: null,
            focusColor: null,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.blackColor
              )
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.nunito(
              color: AppColors.grayColor,
              fontSize: fontSize,
            ),
          ),
          style: GoogleFonts.nunito(
            color: AppColors.blackColor,
            fontSize: fontSize,
          ),
          obscureText: obscureText,
          onChanged: onChanged,
        )
      ],
    );
  }
}