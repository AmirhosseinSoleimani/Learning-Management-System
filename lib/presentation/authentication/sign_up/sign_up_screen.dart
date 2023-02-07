import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

import '../../resources/string_manager.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                  sigmaX: 15,
                  sigmaY: 15
              ),
              child: const SizedBox(),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 15,
                  sigmaY: 15
              ),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p20,
                    vertical: AppPadding.p8
                ),
                child: Column(
                  children: [
                    Text(
                      AppStringSignUp.headerText,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      AppStringSignUp.bodyText,
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
