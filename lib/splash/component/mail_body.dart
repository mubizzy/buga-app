import 'package:flutter/material.dart';

import 'widget/better_button.dart';

// import 'package:flutter/gestures.dart';
// import 'dart:ui';

class MailBody extends StatefulWidget {
  const MailBody({super.key});

  @override
  State<MailBody> createState() => _SceneState();
}

class _SceneState extends State<MailBody> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          // checkyourmail5nB (11:2286)
          padding: EdgeInsets.fromLTRB(16 * fem, 13 * fem, 18 * fem, 8 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xfffafafa),
            borderRadius: BorderRadius.circular(25 * fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // wehavesentyouamailpleaseclicko (11:2300)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 48 * fem),
                constraints: BoxConstraints(
                  maxWidth: 341 * fem,
                ),
                child: Text(
                  'We have sent you a mail. Please click on the link in the message to verify your email address so that you can access the App.',
                  style: TextStyle(
                    fontFamily: 'WorkSans',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.7142857143 * ffem / fem,
                    color: const Color(0xff666666),
                  ),
                ),
              ),
              Container(
                // undrawmailsentre0ofv1rfm (11:2289)
                margin:
                    EdgeInsets.fromLTRB(1.3 * fem, 0 * fem, 0 * fem, 80 * fem),
                width: 224.3 * fem,
                height: 200 * fem,
                child: Image.asset(
                  'assets/images/mail-image.png',
                  width: 224.3 * fem,
                  height: 200 * fem,
                ),
              ),
              Container(
                // frame9tcT (11:2301)
                margin:
                    EdgeInsets.fromLTRB(16 * fem, 0 * fem, 15 * fem, 135 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BetterButton(
                      buttonName: "Check Your Mail",
                      onPressed: () {},
                      bgColor: const Color(0xff003049),
                    ),
                    RichText(
                      // didnt receive the mail check your spam folder
                      text: TextSpan(
                        style: TextStyle(
                          fontFamily: 'Work Sans',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3333333333 * ffem / fem,
                          color: const Color(0xff333333),
                        ),
                        children: [
                          TextSpan(
                            text: 'Didn’t receive the mail?',
                            style: TextStyle(
                              fontFamily: 'Work Sans',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3333333333 * ffem / fem,
                              color: const Color(0xff333333),
                            ),
                          ),
                          const TextSpan(
                            text: ' ',
                          ),
                          TextSpan(
                            text: 'Check your spam folder',
                            style: TextStyle(
                              fontFamily: 'Work Sans',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.7142857143 * ffem / fem,
                              color: const Color(0xff333333),
                            ),
                          ),
                          TextSpan(
                            text: '.',
                            style: TextStyle(
                              fontFamily: 'Work Sans',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3333333333 * ffem / fem,
                              color: const Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ),
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
