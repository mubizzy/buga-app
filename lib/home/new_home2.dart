import 'package:buga_app/screens/quote_page.dart';
import 'package:buga_app/splash/quote2.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_demo/profile.dart';

import '../home/home_widget.dart/export.dart';
import '../screens/sign_up_page.dart';
import '../splash/quote3.dart';

class NewHome2 extends StatefulWidget {
  const NewHome2({super.key});

  @override
  State<NewHome2> createState() => _NewHome2State();
}

class _NewHome2State extends State<NewHome2> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SizedBox(
        width: double.infinity,
        child: Container(
            // homeXCX (8:6917)
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xfffafafa),
              borderRadius: BorderRadius.circular(25 * fem),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Search bar Column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            8 * fem, 12 * fem, 8 * fem, 12 * fem),
                        child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search_outlined,
                                    color: Color(0xff212121)),
                                hintText: "Enter tracking number",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                    borderRadius: BorderRadius.circular(5)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          'How Can We Help You Today?',
                          style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.7777777778 * ffem / fem,
                            color: Color(0xff212121),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Expanded(
                      child: SizedBox(
                          // frame34338U5R (12:4544)
                          width: double.infinity,
                          height: 516 * fem,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                20 * fem, 0 * fem, 16 * fem, 0 * fem),
                            child: ListView(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  NewWidget(fem: fem, ffem: ffem),
                                  SizedBox(height: 12),
                                  NewWidget2(fem: fem, ffem: ffem),
                                  SizedBox(height: 12),
                                  NewWidget3(fem: fem, ffem: ffem),
                                  SizedBox(height: 12),
                                  NewWidget4(fem: fem, ffem: ffem),
                                  SizedBox(height: 12),
                                  NewWidget5(fem: fem, ffem: ffem),
                                ]),
                          )))
                ])));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.fem,
    required this.ffem,
  });

  final double fem;
  final double ffem;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // frame161MQ7 (8:6929)
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => OrderForm2()));
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),

      child: Container(
        // padding: EdgeInsets.fromLTRB(28 * fem, 8 * fem, 8 * fem, 8 * fem),
        width: double.infinity,
        height: 96 * fem,
        decoration: BoxDecoration(
          color: Color(0xfff6f6f6),
          borderRadius: BorderRadius.circular(8 * fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // iconleftZFH (8:6930)

              margin: EdgeInsets.fromLTRB(10 * fem, 0 * fem, 6 * fem, 0 * fem),
              width: 40 * fem,
              height: 40 * fem,
              child: Image.asset(
                'assets/images/quote-image.png',
                width: 40 * fem,
                height: 40 * fem,
              ),
            ),
            Container(
              // frame1591NB (8:6931)
              width: 271 * fem,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // frame160X5d (8:6932)
                    margin:
                        EdgeInsets.fromLTRB(7 * fem, 0 * fem, 0 * fem, 8 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // getaquoteDUF (8:6933)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 2 * fem, 147 * fem, 0 * fem),
                          child: Text(
                            'Get A Quote',
                            style: TextStyle(
                              fontFamily: 'Work Sans',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff212121),
                            ),
                          ),
                        ),
                        Container(
                          // iconleftHDD (8:6934)
                          // getaquoteDUF (8:6933)

                          width: 24 * fem,
                          height: 24 * fem,
                          child: Image.asset(
                            'assets/images/arrow.png',
                            width: 24 * fem,
                            height: 24 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // findouttheestimtedpriceforyout (8:6935)
                    margin:
                        EdgeInsets.fromLTRB(7 * fem, 0 * fem, 0 * fem, 0 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 270 * fem,
                    ),
                    child: Text(
                      'Find out the estimted price for you to send a package just by inputing the approximate weight of package(s), locations, and so on.',
                      style: TextStyle(
                        fontFamily: 'Work Sans',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.6 * ffem / fem,
                        color: Color(0xff333333),
                      ),
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
