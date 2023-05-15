import 'package:flutter/material.dart';

class NewWidget2 extends StatelessWidget {
  const NewWidget2({
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
      onPressed: () {},
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
                'assets/images/package.png',
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
                              0 * fem, 0 * fem, 100 * fem, 0 * fem),
                          child: Text(
                            'Deliver A Package ',
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
