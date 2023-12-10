import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/color_manager.dart';
import '../resources/style_manager.dart';

AppBar customAppBar({
  required String title,
  required double fontSize,
  List<Widget>? actions,
}){
  return AppBar(
    systemOverlayStyle:  const SystemUiOverlayStyle(
        statusBarIconBrightness:Brightness.light,
        statusBarBrightness:Brightness.dark
    ),
    backgroundColor: ColorManager.primary,
    iconTheme: IconThemeData(color: ColorManager.white),
    title: Text(title,style: FontStyles.getMediumStyle(fontSize: fontSize).copyWith(color: ColorManager.white),),
    actions: actions
  );
}