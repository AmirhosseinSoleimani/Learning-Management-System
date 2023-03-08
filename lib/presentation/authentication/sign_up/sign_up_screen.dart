import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import '../../resources/route_manager.dart';
import '../../resources/style_manager.dart';
import '../../widgets/widgets.dart';
import '../../resources/string_manager.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
          backgroundColor: ColorManager.black,
          leading: IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, Routes.navigationBar);
            },
            icon: Icon(
              CupertinoIcons.clear,
              color: ColorManager.darkWhite1,
              size: AppSize.s20,
            ),
          ),
        ),
        body: Column(
          children: [
            Text(
              AppStringSignUp.signUp,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              AppStringSignUp.headerTextFirstLine,
              style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStringSignUp.terms,
                  style: getSemiBoldStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
                ),
                const SizedBox(
                  width: AppSize.s4,
                ),
                Text(
                  AppStringSignUp.and,
                  style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
                ),
                const SizedBox(
                  width: AppSize.s4,
                ),
                Text(
                  AppStringSignUp.privacy,
                  style: getSemiBoldStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s60,
            ),
            typeOfAuthenticationButton(
                svgPictureAddress: IconManagerAssets.email, text: AppStringSignUp.email,color: ColorManager.darkWhite1,width: AppSize.s24,height: AppSize.s24),
            typeOfAuthenticationButton(
                svgPictureAddress: IconManagerAssets.sms, text: AppStringSignUp.sms,width: AppSize.s30,height: AppSize.s30),
            typeOfAuthenticationButton(
                svgPictureAddress: IconManagerAssets.google, text: AppStringSignUp.google),
            typeOfAuthenticationButton(
                svgPictureAddress: IconManagerAssets.facebook, text: AppStringSignUp.facebook),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: AppSize.s14),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, Routes.singIn);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStringSignUp.firstPartSignUp,
                      style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
                    ),
                    const SizedBox(
                      width: AppSize.s6,
                    ),
                    Text(AppStringSignUp.secondPartSignUp,style: Theme.of(context).textTheme.subtitle1,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
