import 'dart:ui';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import '../../resources/string_manager.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  double firstBottomSize = 0.0;
  double secondBottomSize = 0.0;
  double firstBottomOpacity = 0.0;
  double secondBottomOpacity = 0.0;

  Future startAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      secondBottomSize = 50;
      secondBottomOpacity = 1.0;
    });
    await Future.delayed(const Duration(milliseconds: 700));
    setState(() {
      firstBottomSize = 140;
      firstBottomOpacity = 1.0;
    });
  }

  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 200,
            left: 65,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(ImageManagerAssets.spline),
          ),
          Positioned(
            top: 300,
            right: 80,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: RotatedBox(
                quarterTurns: 2,
                child: Image.asset(ImageManagerAssets.spline)),
          ),
          const RiveAnimation.asset(RiveManagerAssets.blobs),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: AppSize.s16,
                  sigmaY: AppSize.s16
              ),
              child: const SizedBox(),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: AppSize.s16,
                  sigmaY: AppSize.s16
              ),
              child: const SizedBox(),
            ),
          ),
          AnimatedPositioned(
            bottom: firstBottomSize,
            left: 12,
            right: 12,
            curve: Curves.easeInOutSine,
            duration: const Duration(milliseconds: 800),
            child: AnimatedOpacity(
              opacity: firstBottomOpacity,
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 500),
              child: glassButton(
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStringSignUp.signInButtonText,
                          style: Theme.of(context).textTheme.button,
                        ),
                        const SizedBox(
                          width: AppPadding.p12,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: ColorManager.black,
                          size: AppSize.s20,
                        ),
                      ],
                    ),
                  ),
                  AppSize.s0_1,
                  AppSize.s0_5,
                  context),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutSine,
            left: 12,
            right: 12,
            bottom: secondBottomSize,
            child: AnimatedOpacity(
              curve: Curves.easeIn,
              opacity: secondBottomOpacity,
              duration: const Duration(milliseconds: 500),
              child: glassButton(
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStringSignUp.signUpButtonText,
                          style: Theme.of(context).textTheme.button,
                        ),
                        const SizedBox(
                          width: AppSize.s12,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: ColorManager.black,
                          size: AppSize.s20,
                        ),
                      ],
                    ),
                  ),
                  AppSize.s0_1,
                  AppSize.s0_5,
                  context),
            ),
          ),

          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p20,
                    vertical: AppPadding.p8
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStringSignUp.headerText,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
