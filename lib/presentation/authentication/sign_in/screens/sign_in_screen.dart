import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';

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
          leading: const Icon(
              CupertinoIcons.clear,
              size: AppSize.s20,
          ),
        ),
        body: Column(
          children: [
            Text('Sign in')
          ],
        ),
      ),
    );
  }
}
