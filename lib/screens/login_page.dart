import 'package:flutter/material.dart';

import '../config.dart';
import '../constant.dart';
import '../splash/component/widget/better_button.dart';
import '../splash/component/widget/exports.dart';
import '../validation.dart';
import 'forget_password.dart';
import 'sign_up_page.dart';
// import 'login_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<LoginPage> {
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
                      'Welcome Back',
                      style: kTitle2,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 2,
                ),
                Text("Log in to your account to get started...",
                    style: kBodyText1),
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
                        Text("Email Address", style: kBodyText3),
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
                        Row(
                          children: [
                            const Expanded(
                                flex: 1,
                                child: MyCheckBox(text: "Remember me")),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgotPasswordPage()));
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: kBodyText5.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 4,
                        ),
                        BetterButton(
                            buttonName: "Log In ",
                            onPressed: onSubmit,
                            bgColor: const Color(0xff003049))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Don't have an account? "),
                    SmallTextButton(
                      buttonText: 'Sign up',
                      page: SignUpPage(),
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
