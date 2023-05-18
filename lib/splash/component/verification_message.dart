import 'package:buga_app/screens/profile_page.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import 'widget/better_button.dart';

class Verification2 extends StatelessWidget {
  const Verification2({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        // accountverifiedWou (11:2533)
        padding: EdgeInsets.fromLTRB(24.5 * fem, 13 * fem, 24.5 * fem, 8 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfffafafa),
          borderRadius: BorderRadius.circular(25 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              // frame341BsR (11:2537)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 247 * fem),
              padding:
                  EdgeInsets.fromLTRB(0 * fem, 9.97 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // checkcirclerTm (11:2538)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 50.03 * fem),
                    width: 100 * fem,
                    height: 100 * fem,
                    child: Image.asset(
                      'assets/images/check-circle.png',
                      width: 100 * fem,
                      height: 100 * fem,
                    ),
                  ),
                  Container(
                    // frame340Jaf (11:2541)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame253R9V (11:2542)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 56 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // congratulationsJUB (11:2543)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 1 * fem, 16 * fem),
                                child: Text(
                                  'Congratulations!',
                                  style: TextStyle(
                                    fontFamily: 'Work Sans',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.6 * ffem / fem,
                                    color: Color(0xff212121),
                                  ),
                                ),
                              ),
                              Center(
                                // theemailcaramelcokerhotmailcom (11:2544)
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 326 * fem,
                                  ),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'Work Sans',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.7142857143 * ffem / fem,
                                        color: Color(0xff333333),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'The email ',
                                        ),
                                        TextSpan(
                                          text: 'caramelcoker@hotmail.com',
                                          style: TextStyle(
                                            fontFamily: 'Work Sans',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.7142857143 * ffem / fem,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ' is now a verified acount. Thank you for helping us keep your account verified.',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        BetterButton(
                          buttonName: "Continue",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProfilePage()));
                          },
                          bgColor: const Color(0xff003049),
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
    );
  }
}
