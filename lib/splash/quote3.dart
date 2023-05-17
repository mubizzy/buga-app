import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'quote2.dart';

class OrderForm2 extends StatefulWidget {
  const OrderForm2({super.key});

  @override
  State<OrderForm2> createState() => _OrderForm2State();
}

class _OrderForm2State extends State<OrderForm2> {
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
              color: const Color(0xff212121),
            ),
          ),
        ),
        body: OrderForm());
  }
}
