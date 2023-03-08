import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/style_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/color_manager.dart';
import '../resources/string_manager.dart';

Widget glassButton(
    {
      required Widget child,
      required double startOpacity,
      required double endOpacity,
      required BuildContext context,
      required double heightSize,
      required double radiusSize,
    }){
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


BottomNavigationBarItem customNavigationBar(
    {required Color color, required Color activeColor, required double iconSize,required String labelText,required IconData icon,required IconData activeIcon}
    ){
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      color: color,
      size: iconSize,
    ),
    label: labelText,
    activeIcon: Icon(
      activeIcon,
      color: activeColor,
      size: iconSize,
    ),
  );
}

Widget signInElevatedButton({required VoidCallback onPressed, required BuildContext context}){
  return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s0)
        )
      ),
      child: Text(
          AppStringSignUp.signInButtonText,
        style: Theme.of(context).textTheme.button,
      ),
  );
}

Widget arrowBackButton({required BuildContext context}){
  return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: ColorManager.white,
          size: AppSize.s20,
      ),
  );
}

Widget svgPicture({required String svgPictureAddress,Color color = Colors.white,double width = 30,double height = 30}){
  return SizedBox(
    width: width,
    height: height,
    child: SvgPicture.asset(
        svgPictureAddress,
        color: color,
    ),
  );
}

Widget typeOfAuthenticationButton({required String svgPictureAddress,required String text,Color? color,double width = 20,double height = 20}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20,vertical: AppPadding.p4),
    child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s6),
                )
            )
        ),
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width,
              height: height,
              child: SvgPicture.asset(
                  svgPictureAddress,
                  color: color,
              ),
            ),
            const SizedBox(
              width: AppSize.s8,
            ),
            Text(
                text,
              style: getSemiBoldStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
            )
          ],
        ),
    ),
  );
}