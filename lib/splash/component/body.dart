// import 'dart:js';

// import 'package:buga_app/screens/splashcontent.dart';
import 'package:flutter/material.dart';

import 'onboarding.dart';
import 'widget/splashcontent.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    // double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        // onboarding1
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(16 * fem, 13 * fem, 16 * fem, 8 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xfffafafa),
            borderRadius: BorderRadius.circular(25 * fem),
          ),
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingContents.length,
              itemBuilder: (context, index) => SplashContent(
                    image: onboardingContents[index].image,
                    title: onboardingContents[index].title,
                    text: onboardingContents[index].text,
                  )),
        ),
      ),
    );
  }
}

int currentPage = 0;

PageController _pageController = PageController(initialPage: 0);

AnimatedContainer dotIndicator(index) {
  return AnimatedContainer(
    margin: const EdgeInsets.only(right: 0),
    duration: const Duration(milliseconds: 400),
    height: 12,
    width: 12,
    // width: 32 * fem,
    // height: 8 * fem,
    decoration: BoxDecoration(
      color: currentPage == index
          ? const Color(0xFFE57373)
          : const Color(0xFF424242),
      shape: BoxShape.circle,
    ),
  );
}

// ignore: non_constant_identifier_names
SafeGoogleFont(String s,
    {required double fontSize,
    required FontWeight fontWeight,
    required double height,
    required Color color}) {}
