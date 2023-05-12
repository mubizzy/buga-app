import 'package:flutter/material.dart';

import '../splash/component/mail_body.dart';

class MailMessage extends StatefulWidget {
  const MailMessage({super.key});

  @override
  State<MailMessage> createState() => _Home2State();
}

class _Home2State extends State<MailMessage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Verify Your Email",
              style: TextStyle(
                fontFamily: 'Work Sans',
                fontSize: 18 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.7777777778 * ffem / fem,
                color: const Color(0xff003049),
              )),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Color(0xff003049)),
          ),
        ),
        body: const MailBody());
  }
}
