import 'package:flutter/material.dart';

import '../rich_text.dart';
import '../splash/component/popup_screen.dart';

import '../splash/component/widget/better_button.dart';
import '../splash/component/widget/my_text_formfield.dart';
import '../validation.dart';
import 'home_screen.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _signUpKey = GlobalKey<FormState>();

  String? _fullName;
  String? address;
  String? delivery;
  double? weight;
  int? quantity;
  void _submitForm() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      // TODO: Save form data to a database or perform other actions
      // with the data.
      Navigator.pop(context);
    }
  }

  // void _submitForm() {
  //   final form = _formKey.currentState;
  //   if (form!.validate()) {
  //     form.save();
  //     // TODO: Save form data to a database or perform other actions
  //     // with the data.
  //     Navigator.pop(context);
  //   }
  // }

  // void _submitForm2() {
  //   if (_signUpKey.currentState!.validate()) {
  //     _signUpKey.currentState!.save();
  //     // if all are valid then go to success screen
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => PopUpScreen()));
  //   }
  // }

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
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Fill in the details below to get an estimated price for your package(s)',
              style: TextStyle(
                fontFamily: 'Work Sans',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.3333333333 * ffem / fem,
                color: const Color(0xff333333),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Text(
                  'Location',
                  style: TextStyle(
                    fontFamily: 'Work Sans',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.7142857143 * ffem / fem,
                    color: Color(0xff212121),
                  ),
                ),
                const Spacer(
                  flex: 1, // <-- SEE HERE
                ),
                Image.asset(
                  'assets/images/icon-plus.png',
                  width: 20 * fem,
                  height: 20 * fem,
                )
              ],
            ),
          ),

          // Rich Text
          Texts(
            ffem: ffem,
            fem: fem,
            text: "Pick-Up Address",
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 0 * fem),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter pick-up address',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding: EdgeInsets.all(15)),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please select a delivery option';
                }
                return null;
              },
              onSaved: (value) {
                delivery = value;
              },
            ),
          ),
          Texts(
            ffem: ffem,
            fem: fem,
            text: "Delivery Address",
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 0 * fem),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter delivery address',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding: EdgeInsets.all(15)),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your address';
                }
                return null;
              },
              onSaved: (value) {
                address = value;
              },
            ),
          ),
          SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              children: [
                Text(
                  'Package',
                  style: TextStyle(
                    fontFamily: 'Work Sans',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.7142857143 * ffem / fem,
                    color: Color(0xff212121),
                  ),
                ),
                const Spacer(
                  flex: 1, // <-- SEE HERE
                ),
                Image.asset(
                  'assets/images/icon-plus.png',
                  width: 20 * fem,
                  height: 20 * fem,
                )
              ],
            ),
          ),
          // Weight Text
          Texts(
            ffem: ffem,
            fem: fem,
            text: "Weight",
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 0 * fem),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter approximate weigth of goods',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding: EdgeInsets.all(15)),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your address';
                }
                return null;
              },
              onSaved: (value) {
                address = value;
              },
            ),
          ),
          SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Dimension",
              style: TextStyle(
                fontFamily: 'Work Sans',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.3333333333 * ffem / fem,
                color: Color(0xff212121),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 0 * fem),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Length',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding: EdgeInsets.all(15)),
                )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "by",
                  style: TextStyle(
                    fontFamily: 'Work Sans',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.3333333333 * ffem / fem,
                    color: Color(0xff212121),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Weight',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding: EdgeInsets.all(15)),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "by",
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3333333333 * ffem / fem,
                      color: Color(0xff212121),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Height',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding: EdgeInsets.all(15)),
                )),
              ],
            ),
          ),
          //Quantity Text
          Texts(
            ffem: ffem,
            fem: fem,
            text: "Quantity",
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 0 * fem),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter approximate weigth of goods',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding: EdgeInsets.all(15)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          BetterButton(
              buttonName: "Get A Quote",
              // onPressed: onSubmit,

              onPressed: () {
                // if all are valid then go to success screen
                _submitForm();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PopUpScreen()));
              },
              bgColor: const Color(0xff003049)),
          SizedBox(
            height: 40,
          ),
        ])));
  }
}
