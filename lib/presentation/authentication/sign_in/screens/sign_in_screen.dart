import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import 'package:learning_management_system/presentation/widgets/widgets.dart';

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
          leading: Icon(
              CupertinoIcons.clear,
              color: ColorManager.darkWhite1,
              size: AppSize.s20,
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
            typeOfAuthenticationButton(
                svgPictureAddress: IconManagerAssets.email, text: 'email',color: ColorManager.white)
          ],
        ),
      ),
    );
  }
}
