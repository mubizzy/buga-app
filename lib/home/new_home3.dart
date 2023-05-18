import 'package:flutter/material.dart';

import 'new_home2.dart';

class NewHome3 extends StatelessWidget {
  const NewHome3({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/ellipse-6-bg.png'),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sept. 29, 2022',
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6 * ffem / fem,
                      color: const Color(0xff333333),
                    ),
                  ),
                  Text(
                    'Hi, Caramel!',
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.3333333333 * ffem / fem,
                      color: const Color(0xff212121),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.notifications_none,
                size: 35,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: const NewHome2());
  }
}
