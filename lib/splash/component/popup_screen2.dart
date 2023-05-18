import 'dart:async';
import 'package:flutter/material.dart';

class PopUpScreen2 extends StatefulWidget {
  const PopUpScreen2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PopUpScreenState createState() => _PopUpScreenState();
}

class _PopUpScreenState extends State<PopUpScreen2> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate loading delay
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Dialog(
        child: isLoading
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Transaction in progress"),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                      "Kindly wait a few minutes while your payment is being processed..."),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    child: const Text('Cancel Transaction'),
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
