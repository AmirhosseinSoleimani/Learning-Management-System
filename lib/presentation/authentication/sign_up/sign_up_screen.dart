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
          Positioned.fill(child: BackdropFilter(
            filter: ImageFilter.blur(),
          ),
          ),
          const RiveAnimation.asset('assets/rive_assets/blobs.riv')
        ],
      ),
    );
  }
}
