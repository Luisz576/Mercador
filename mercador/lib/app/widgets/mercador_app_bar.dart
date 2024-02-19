import 'package:flutter/material.dart';
import 'package:mercador/app/shared/app_colors.dart';
import 'package:mercador/app/widgets/form/search_input.dart';

AppBar mercadorAppBar(){
  return AppBar(
    backgroundColor: AppColors.secundaryColor,
    actions: const [
      CircleAvatar(
        backgroundColor: AppColors.grayColor,
      )
    ],
    title: SearchInput(),
  );
}