import 'dart:async';
import 'package:buga_app/home/new_home2.dart';
import 'package:buga_app/home/new_home3.dart';
import 'package:buga_app/splash/component/widget/better_button.dart';
import 'package:flutter/material.dart';

import 'widget/better_button2.dart';

class PopUpScreen extends StatefulWidget {
  @override
  _PopUpScreenState createState() => _PopUpScreenState();
}

class _PopUpScreenState extends State<PopUpScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate loading delay
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Dialog(
      child: isLoading
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  // transactioninprogressrJw (8:7031)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
                  child: Text(
                    'Transaction In Progress',
                    textAlign: TextAlign.center,
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
                  // kindlywaitafewminuteswhileyour (8:7035)
                  constraints: BoxConstraints(
                    maxWidth: 222 * fem,
                  ),
                  child: Text(
                    'Kindly wait a few minutes while your payment is being processed...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3333333333 * ffem / fem,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(),
                ),
                SizedBox(height: 16.0),
                BetterButton2(
                    buttonName: "Cancel Transaction",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    bgColor: Color(0xff003049)),
                SizedBox(height: 40.0),
              ],
            )
          : Stack(
              alignment: Alignment.topRight,
              children: [
                Column(mainAxisSize: MainAxisSize.min, children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewHome3()));
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.close, color: Colors.black),
                    ),
                  ),
                  Text(
                    "Estimated Price",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff212121),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '#5,500.00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff212121),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 209 * fem,
                    ),
                    child: Text(
                      'Kindly note that the above price is just an estimate and the final price may vary a little.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Work Sans',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3333333333 * ffem / fem,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  BetterButton(
                      buttonName: 'Book Shipment',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewHome3()));
                      },
                      bgColor: const Color(0xff003049)),
                  SizedBox(
                    height: 40,
                  ),
                ])
              ],
            ),
    );
  }
}
