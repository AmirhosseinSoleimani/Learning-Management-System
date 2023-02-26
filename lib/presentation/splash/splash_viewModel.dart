import 'dart:async';
import '../base/base_viewModel.dart';
import 'package:flutter/material.dart';
import '../resources/route_manager.dart';

class OnBoardingViewModel extends BaseViewModel with SplashInputs,SplashOutputs {

  bool isLoading = false;
  Timer? _timer;

  // inputs
  @override
  void dispose() {
    _timer!.cancel();
  }

  @override
  void start(BuildContext context) {
    getLoading();
    startDelay(context);
  }

  @override
  goNext(BuildContext context) {
    Navigator.popAndPushNamed(context, Routes.navigationBar);
  }


  @override
  startDelay(BuildContext context) {
    _timer = Timer(
        const Duration(seconds: 6),
            () {
          goNext(context);
        });
  }

  @override
  getLoading() async {
    Future.delayed(const Duration(milliseconds: 100), () {
      isLoading = true;
    });
  }


}
abstract class SplashInputs{
  void goNext(BuildContext context);
  void startDelay(BuildContext context);
  void getLoading();
}

abstract class SplashOutputs{

}