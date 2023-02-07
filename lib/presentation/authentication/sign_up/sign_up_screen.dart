import 'dart:ui';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset('assets/rive_assets/blobs.riv'),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
              sigmaX: 20,
              sigmaY: 20
            ),
              child: const SizedBox(),
          ),
          ),
        ],
      ),
    );
  }
}
