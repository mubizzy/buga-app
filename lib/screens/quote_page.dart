import 'package:flutter/material.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black, // <-- SEE HERE
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            // getaquoteVmV (8:6968)
            'Get A Quote',
            style: TextStyle(
              fontFamily: 'Work Sans',
              fontSize: 18 * ffem,
              fontWeight: FontWeight.w600,
              height: 1.7777777778 * ffem / fem,
              color: Color(0xff212121),
            ),
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Text(
              'Fill in the details below to get an estimated price for your package(s)',
              style: TextStyle(
                fontFamily: 'Work Sans',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.3333333333 * ffem / fem,
                color: const Color(0xff333333),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(8 * fem, 12 * fem, 8 * fem, 12 * fem),
              child: Row(
                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.7142857143 * ffem / fem,
                      color: Color(0xff212121),
                    ),
                  ),
                  Spacer(
                    flex: 1, // <-- SEE HERE
                  ),
                  Image.asset(
                    'assets/images/icon-plus.png',
                    width: 20 * fem,
                    height: 20 * fem,
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
