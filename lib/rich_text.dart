import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({
    super.key,
    required this.ffem,
    required this.fem,
    required this.text,
  });

  final double ffem;
  final double fem;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: RichText(
            // labeltextf9V (I8:6976;2:155;2:137)
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'Work Sans',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.3333333333 * ffem / fem,
                color: const Color(0xff212121),
              ),
              children: [
                TextSpan(
                  text: text,
                ),
                TextSpan(
                  text: '*',
                  style: TextStyle(
                    fontFamily: 'Work Sans',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.3333333333 * ffem / fem,
                    color: const Color(0xffda0a0a),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
