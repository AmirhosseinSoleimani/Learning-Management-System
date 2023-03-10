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
          AppStringSignIn.signIn,
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

Widget typeOfAuthenticationButton({required VoidCallback onPressed,required String svgPictureAddress,required String text,Color? color,double width = 20,double height = 20}){
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
        onPressed: onPressed,
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

Widget customTextForFieldOutLine({required BuildContext context,TextEditingController? textEditingController,Function(String value)? onChange,FocusNode? focusNode,String? hintText,required TextInputType textInputType,bool autoFocus = false}){
  return Padding(
    padding: const EdgeInsets.all(AppPadding.p12),
    child: SizedBox(
      width: (MediaQuery.of(context).size.width - AppPadding.p24),
      height: AppSize.s40,
      child: TextFormField(
        controller: textEditingController,
        onChanged: onChange,
        focusNode: focusNode,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: AppSize.s1_5,
                  color: ColorManager.darkWhite1)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: AppSize.s1_5,
                  color: ColorManager.darkWhite1)
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: AppPadding.p8,
            horizontal: AppPadding.p8
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: AppSize.s1,color: ColorManager.darkWhite1),
            borderRadius:
            BorderRadius.circular(AppSize.s4),
          ),
          focusColor: ColorManager.darkWhite1,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.labelMedium,
        ),
        keyboardType: textInputType,
        textInputAction: TextInputAction.done,
        enableSuggestions: true,
        autofocus: autoFocus,
        style: getRegularStyle(fontSize: AppSize.s16, color: ColorManager.darkWhite1),
        cursorColor: ColorManager.darkWhite1,
        cursorHeight: AppSize.s24,
      ),
    ),
  );
}

Widget customElevatedButton({required BuildContext context,required String text,VoidCallback? onPressed}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      width: (MediaQuery.of(context).size.width - AppPadding.p24),
      height: AppSize.s40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.darkGrey,
            side: BorderSide(
              width: AppSize.s1_5,
              color: ColorManager.darkGrey,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s4)
            )
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    ),
  );
}