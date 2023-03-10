import 'package:flutter/material.dart';
import 'package:learning_management_system/presentation/resources/color_manager.dart';
import '../../../resources/string_manager.dart';
import '../../../resources/style_manager.dart';
import '../../../resources/values_manager.dart';
import '../../../widgets/widgets.dart';

class SignInWithEmailScreen extends StatefulWidget {
  const SignInWithEmailScreen({Key? key}) : super(key: key);

  @override
  State<SignInWithEmailScreen> createState() => _SignInWithEmailScreenState();
}

class _SignInWithEmailScreenState extends State<SignInWithEmailScreen> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      appBar: AppBar(
        leading: arrowBackButton(context: context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
                AppStringSignIn.welcome,
                style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text(
            AppStringSignIn.headerTextSignInWithEmail,
            style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.darkWhite1),
          ),
          const SizedBox(
            height: AppSize.s60,
          ),
          customTextForFieldOutLine(
            context: context,
            onChange: (value){
              setState(() {
                _emailController.text = value;
                _emailController.selection = TextSelection.fromPosition(TextPosition(offset: _emailController.text.length));

              });
              },
            textEditingController: _emailController,
            focusNode: _emailFocusNode,
            hintText: AppStringSignIn.hintTextEmail,
            textInputType: TextInputType.emailAddress,
            autoFocus: true,
          ),
          customElevatedButton(
              context: context,
              text: AppStringSignIn.nextButton,
              onPressed: (){
                print(_emailController.text);
              }),
        ],
      ),
    );
  }
}
