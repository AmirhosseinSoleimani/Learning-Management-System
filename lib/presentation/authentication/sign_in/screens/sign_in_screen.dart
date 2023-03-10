import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import 'package:learning_management_system/presentation/widgets/widgets.dart';
import '../../../resources/route_manager.dart';
import '../../../resources/string_manager.dart';
import '../../../resources/style_manager.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
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
                AppStringSignIn.signIn,
                style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              AppStringSignIn.headerTextFirstLine,
              style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStringSignIn.terms,
                  style: getSemiBoldStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
                ),
                const SizedBox(
                  width: AppSize.s4,
                ),
                Text(
                  AppStringSignIn.and,
                  style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
                ),
                const SizedBox(
                  width: AppSize.s4,
                ),
                Text(
                  AppStringSignIn.privacy,
                  style: getSemiBoldStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s60,
            ),
            typeOfAuthenticationButton(
                svgPictureAddress: IconManagerAssets.email, text: AppStringSignIn.signInEmail,color: ColorManager.darkWhite1,width: AppSize.s24,height: AppSize.s24, onPressed: () { Navigator.pushNamed(context, Routes.singInWithEmail); }),
            typeOfAuthenticationButton(
                svgPictureAddress: IconManagerAssets.sms, text: AppStringSignIn.sms,width: AppSize.s30,height: AppSize.s30, onPressed: () {  }),
            typeOfAuthenticationButton(
                svgPictureAddress: IconManagerAssets.google, text: AppStringSignIn.google, onPressed: () {  }),
            typeOfAuthenticationButton(
                svgPictureAddress: IconManagerAssets.facebook, text: AppStringSignIn.facebook, onPressed: () {  }),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: AppSize.s14),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, Routes.signUp);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStringSignIn.firstPartSignUp,
                      style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
                    ),
                    const SizedBox(
                      width: AppSize.s6,
                    ),
                    Text(AppStringSignIn.secondPartSignUp,style: Theme.of(context).textTheme.subtitle1,),
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
