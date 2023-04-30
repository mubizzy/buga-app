import 'package:flutter/material.dart';

import '../config.dart';
import '../constant.dart';
import '../splash/component/widget/exports.dart';
// import 'body_signup.dart';

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 4,
                    ),
                    MyTextFormField(
                      fillColor: Colors.white,
                      hint: 'Name',
                      icon: Icons.person,
                      inputAction: TextInputAction.next,
                      inputType: TextInputType.name,
                      focusNode: _signUpFocusNodes[0],
                    ),
                    Text("Email"),
                    MyTextFormField(
                      hint: 'Email',
                      icon: Icons.email_outlined,
                      fillColor: Colors.white,
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                      focusNode: _signUpFocusNodes[1],
                    ),
                    MyPasswordField(
                        fillColor: Colors.white,
                        focusNode: _signUpFocusNodes[2]),
                    MyCheckBox(
                        text: "I agree to the terms of service and privacy")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
