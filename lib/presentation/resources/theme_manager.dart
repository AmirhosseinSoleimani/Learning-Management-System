import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/style_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    textTheme: TextTheme(
      labelMedium: getRegularStyle(fontSize: 14, color: ColorManager.white),
      bodyText1: getRegularStyle(fontSize: 14, color: ColorManager.white)
    ),
  );
}