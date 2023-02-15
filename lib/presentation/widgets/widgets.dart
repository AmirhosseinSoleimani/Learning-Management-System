import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import '../resources/string_manager.dart';

Widget glassButton(Widget child,double startOpacity,double endOpacity,BuildContext context,double heightSize,double radiusSize){
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: AppSize.s4, sigmaY: AppSize.s4),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: heightSize,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pinkAccent.withOpacity(startOpacity),
                Colors.purpleAccent.withOpacity(endOpacity),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: BorderRadius.all(Radius.circular(radiusSize)),
          ),
          child: child,
        ),
      ),
    );
}


BottomNavigationBarItem customNavigationBar(Color color,double iconSize,String svgPicturePath){
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      svgPicturePath,
      color: color,
      width: iconSize,
      height: iconSize,
    ),
    label: AppStringNavigationBar.home,
    activeIcon: SvgPicture.asset(
      svgPicturePath,
      color: color,
      width: iconSize,
      height: iconSize,
    ),
  );
}