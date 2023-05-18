import 'package:flutter/material.dart';
import 'verification_message.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _OrderForm2State();
}

class _OrderForm2State extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        appBar: AppBar(
          // leading: const BackButton(
          //   color: Colors.black, // <-- SEE HERE
          // ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Account Verified',
            style: TextStyle(
              fontFamily: 'Work Sans',
              fontSize: 18 * ffem,
              fontWeight: FontWeight.w600,
              height: 1.7777777778 * ffem / fem,
              color: Color(0xff003049),
            ),
          ),
        ),
        body: Verification2());
  }
}
