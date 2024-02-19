import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mercador/app/shared/app_colors.dart';
import 'package:mercador/app/widgets/inherited/app_metrics_inherited.dart';
import 'package:signals/signals_flutter.dart';

class SearchInput extends StatelessWidget {
  SearchInput({super.key});

  final text = signal("");

  @override
  Widget build(BuildContext context) {
    final appMetrictsInherited = AppMetrictsInherited.of(context);
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.blueWhiteColor,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                fillColor: null,
                focusColor: null,
                hintText: "Busque produtos, marcas e muito mais...",
                hintStyle: GoogleFonts.nunito(
                  color: AppColors.grayColor,
                  fontSize: appMetrictsInherited.smallTextSize,
                )
              ),
              style: GoogleFonts.nunito(
                fontSize: appMetrictsInherited.smallTextSize,
                color: AppColors.blackColor,
              ),
              onChanged: text.set,
            ),
          ),
          Icon(Icons.search,
            color: AppColors.blackColor,
            size: appMetrictsInherited.smallIconSize,
          )
        ],
      ),
      )
    );
  }
}