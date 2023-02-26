import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/assets_manager.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import 'package:learning_management_system/presentation/resources/route_manager.dart';
import 'package:learning_management_system/presentation/resources/values_manager.dart';
import '../resources/style_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  _getLoading() async{
    Future.delayed(const Duration(milliseconds: 100),(){
      setState(() {
        isLoading = true;
      });
    });
  }

  Timer? _timer;

  _startDelay(){
    _timer = Timer(const Duration(seconds: 6),_goNext);
  }

  _goNext(){
    Navigator.popAndPushNamed(context, Routes.navigationBar);
  }

  @override
  void initState() {
    _getLoading();
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.black,
        body: Center(
          child: SizedBox(
            width: 150,
            height: 250,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                    duration: const Duration(seconds: 1),
                    opacity: isLoading ? 1.0 : 0.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'E',
                            style: getBoldStyle(fontSize: AppSize.s48, color: ColorManager.white),
                        ),
                        Text(
                          'p',
                          style: getBoldStyle(fontSize: AppSize.s48, color: ColorManager.white),
                        ),
                        Text(
                          'e',
                          style: getBoldStyle(fontSize: AppSize.s48, color: ColorManager.white),
                        ),
                        Text(
                          'n',
                          style: getBoldStyle(fontSize: AppSize.s48, color: ColorManager.white),
                        ),
                        Text(
                          't',
                          style: getBoldStyle(fontSize: AppSize.s48, color: ColorManager.white),
                        )
                      ],
                    ),
                  ),
                ),
                AnimatedPositioned(
                  top: isLoading ? 65 : 0,
                  left: -9,
                  curve: Curves.easeIn,
                  duration: const Duration(seconds: 2),
                  child: AnimatedOpacity(
                    duration: const Duration(seconds: 1),
                    opacity: isLoading ? 1.0 : 0.0,
                    child: Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: ColorManager.darkPurple,
                      size: 70,
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 150,
                  child: AnimatedOpacity(
                    duration: const Duration(seconds: 4),
                    opacity: isLoading ? 1.0 : 0.0,
                    child: const Image(
                      image: AssetImage(
                        ImageManagerAssets.splash,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
