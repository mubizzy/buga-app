import 'package:flutter/material.dart';

class BetterButton extends StatelessWidget {
  const BetterButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
  });

  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // basebuttonZTh (11:2302)
      margin: EdgeInsets.fromLTRB(15.5 * fem, 0 * fem, 14.5 * fem, 8 * fem),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 48 * fem,
          child: Container(
            // basebuttonDYF (I11:2302;2:183)
            padding:
                EdgeInsets.fromLTRB(77.5 * fem, 12 * fem, 76.5 * fem, 12 * fem),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(4 * fem),
            ),
            child: Center(
              child: Text(
                buttonName,
                style: TextStyle(
                  fontFamily: 'Work Sans',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.5 * ffem / fem,
                  color: const Color(0xfffafafa),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
