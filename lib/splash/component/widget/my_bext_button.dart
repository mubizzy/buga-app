import 'package:flutter/material.dart';

import '../body.dart';

class NewButton extends StatelessWidget {
  const NewButton({
    super.key,
    // required this.fem,
    // required this.ffem,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
  });

  // final double fem;
  // final double ffem;
  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
        width: double.infinity,
        height: 48 * fem,
        child: Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(4 * fem),
          ),
          child: TextButton(
            onPressed: onPressed,
            style: SafeGoogleFont(
              'Work Sans',
              fontSize: 16 * ffem,
              fontWeight: FontWeight.w500,
              height: 1.5 * ffem / fem,
              color: const Color(0xfffafafa),
            ),
            child: Text(buttonName),
          ),
        ));
  }
}
