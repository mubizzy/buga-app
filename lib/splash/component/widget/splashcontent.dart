import 'package:flutter/material.dart';
import '../../../screens/sign_up_page.dart';

import '../body.dart';
import 'my_bext_button.dart';
import '../onboarding.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.image,
    required this.title,
  });

  final String text, image, title;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // light17tf (8:407)
          margin: EdgeInsets.fromLTRB(
              15.1 * fem, 0 * fem, 13.73 * fem, 81.73 * fem),
          width: double.infinity,
          height: 23 * fem,
          child: const SizedBox(),
        ),
        Container(
          // illustrations
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 42.69 * fem),
          width: 343 * fem,
          height: 255.58 * fem,
          child: Image.asset(
            image,
            width: 343 * fem,
            height: 255.58 * fem,
          ),
        ),
        Container(
          // frame2
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 32 * fem),
          // width: 32 * fem,
          // height: 8 * fem,
          child: Column(
            children: [
              currentPage == onboardingContents.length - 1
                  ? NewButton(
                      buttonName: "Get Started",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      bgColor: const Color(0xff003049),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingContents.length,
                        (index) => dotIndicator(index),
                      ),
                    ),
            ],
          ),
        ),
        Container(
          // frames
          margin:
              EdgeInsets.fromLTRB(59.5 * fem, 0 * fem, 60.5 * fem, 104 * fem),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // orderpickup
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                child: Text(
                  title,
                  style: SafeGoogleFont(
                    'Work Sans',
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.6666666667 * ffem / fem,
                    color: const Color(0xff003049),
                  ),
                ),
              ),
              Center(
                // order for your packages pickupstra (8:471)
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 223 * fem,
                  ),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Work Sans',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.7142857143 * ffem / fem,
                      color: const Color(0xff333333),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
