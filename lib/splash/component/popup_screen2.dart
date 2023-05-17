import 'dart:async';
import 'package:flutter/material.dart';

class PopUpScreen2 extends StatefulWidget {
  @override
  _PopUpScreenState createState() => _PopUpScreenState();
}

class _PopUpScreenState extends State<PopUpScreen2> {
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
                  Text("Transaction in progress"),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                      "Kindly wait a few minutes while your payment is being processed..."),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    child: Text('Cancel Transaction'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                    Container(
                      // iconleftaaF (8:7048)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 16 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.asset(
                          'assets/high-fi-designs/images/icon-left-5X9.png',
                          width: 24 * fem,
                          height: 24 * fem,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]));
  }
}
