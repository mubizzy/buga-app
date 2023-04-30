import 'package:flutter/material.dart';

import '../config.dart';
import '../constant.dart';
import '../splash/component/widget/exports.dart';
import '../validation.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _signUpKey = GlobalKey<FormState>();

  void onSubmit() {
    _signUpKey.currentState!.validate();
  }

  final List<FocusNode> _signUpFocusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    super.initState();
    for (var element in _signUpFocusNodes) {
      element.addListener(() {
        setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double height = SizeConfig.blockSizeV!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Sign Up',
                      style: kTitle2,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 2,
                ),
                Text("Create an account to get started...", style: kBodyText1),
                SizedBox(
                  height: height * 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Form(
                    key: _signUpKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 4,
                        ),
                        Text("Full Name", style: kBodyText3),
                        MyTextFormField(
                          fillColor: Colors.white,
                          hint: 'Name',
                          icon: Icons.person,
                          inputAction: TextInputAction.next,
                          inputType: TextInputType.name,
                          focusNode: _signUpFocusNodes[0],
                          validator: nameValidator,
                        ),
                        Text("Email", style: kBodyText3),
                        MyTextFormField(
                          hint: 'Email',
                          icon: Icons.email_outlined,
                          fillColor: Colors.white,
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                          focusNode: _signUpFocusNodes[1],
                          validator: emailValidator,
                        ),
                        Text("Password", style: kBodyText3),
                        MyPasswordField(
                          fillColor: Colors.white,
                          focusNode: _signUpFocusNodes[2],
                          validator: passwordValidator,
                        ),
                        const MyCheckBox(
                            text:
                                "I agree to the terms of service and privacy"),
                        SizedBox(
                          height: height * 4,
                        ),
                        NewButton(
                            buttonName: "Sign Up",
                            onPressed: onSubmit,
                            bgColor: const Color(0xff003049))
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: kBodyText3,
                    ),
                    const SmallTextButton(
                      buttonText: "Log In",
                      page: LoginPage(),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 3,
                          color: kSecondaryColor.withOpacity(0.4),
                        ),
                      ),
                      Text(
                        'Or sign in with',
                        style: kBodyText3,
                      ),
                      Expanded(
                        child: Divider(
                          height: 3,
                          color: kSecondaryColor.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 2,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: LargeIconButton(
                        buttonName: 'Google',
                        iconImage: 'assets/images/facebook.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: LargeIconButton(
                      buttonName: 'Facebook',
                      iconImage: 'assets/images/google.png',
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
