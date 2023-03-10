import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';

import '../../../widgets/widgets.dart';

class SignInWithEmailScreen extends StatelessWidget {
  const SignInWithEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      appBar: AppBar(
        leading: arrowBackButton(context: context),
      ),
      body: Column(
        children: [
          Text('Welcome back!'),
          Text('Enter your email to log in youe account'),
        ],
      ),
    );
  }
}
