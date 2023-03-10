import 'package:flutter/cupertino.dart';
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
  bool activeColor = false;
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
          Padding(
            padding: const EdgeInsets.all(AppPadding.p12),
            child: SizedBox(
              width: (MediaQuery.of(context).size.width - AppPadding.p24),
              height: AppSize.s60,
              child: TextFormField(
                controller: _emailController,
                onChanged: (String? value){
                  setState(() {
                    _emailController.text = value!;
                    _emailController.selection = TextSelection.fromPosition(TextPosition(offset: _emailController.text.length));
                    if(_emailController.text.isEmpty){
                      setState(() {
                        activeColor = false;
                      });
                    }
                    else if(!_emailController.text.contains('@')){
                      setState(() {
                        activeColor = false;
                      });
                    }
                    else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(_emailController.text)) {
                      setState(() {
                        activeColor = false;
                      });
                    }
                    else{
                      setState(() {
                        activeColor = true;
                      });
                    }
                  });
                },
                focusNode: _emailFocusNode,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: AppSize.s1_5,
                          color: ColorManager.darkWhite1)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: AppSize.s1_5,
                          color: ColorManager.darkWhite1)
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: AppPadding.p8,
                      horizontal: AppPadding.p8
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: AppSize.s1,color: ColorManager.darkWhite1),
                    borderRadius:
                    BorderRadius.circular(AppSize.s4),
                  ),
                  focusColor: ColorManager.darkWhite1,
                  hintText: AppStringSignIn.hintTextEmail,
                  hintStyle: Theme.of(context).textTheme.labelMedium,
                  label: (_emailController.text.isNotEmpty) ? Text(
                    AppStringSignIn.email,
                    style: getSemiBoldStyle(fontSize: AppSize.s16, color: ColorManager.darkWhite1),) : null,
                  suffixIcon: (_emailController.text.isEmpty) ? null :
                     IconButton(
                       onPressed: () {
                         setState(() {
                           _emailController.clear();
                         });
                       },
                       icon: Icon(
                           CupertinoIcons.clear,
                           color: ColorManager.white,
                           size: AppSize.s20,
                       ),
                     )
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                enableSuggestions: true,
                autofocus: true,
                style: getRegularStyle(fontSize: AppSize.s16, color: ColorManager.darkWhite1),
                cursorColor: ColorManager.darkWhite1,
                cursorHeight: AppSize.s24,
              ),
            ),
          ),
          customElevatedButton(
              context: context,
              text: AppStringSignIn.nextButton,
              onPressed: (){
                if(_emailController.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          AppStringSignIn.validTextForm,
                          style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.black),
                      ),
                      backgroundColor: ColorManager.error,
                    ),
                  );
                }
                if(!_emailController.text.contains('@')){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppStringSignIn.validTextForm,
                        style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.black),
                      ),
                      backgroundColor: ColorManager.error,
                    ),
                  );
                }
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(_emailController.text)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppStringSignIn.validTextForm,
                        style: getRegularStyle(fontSize: AppSize.s14, color: ColorManager.black),
                      ),
                      backgroundColor: ColorManager.error,
                    ),
                  );
                }
              },
            color: activeColor ? ColorManager.darkWhite1 : ColorManager.darkGrey,
          )
        ],
      ),
    );
  }
}
