import 'package:flutter/material.dart';

import '../rich_text.dart';
import 'component/popup_screen.dart';
import 'component/widget/better_button.dart';

class OrderForm extends StatefulWidget {
  const OrderForm({super.key});

  @override
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _pickupAddressController = TextEditingController();
  TextEditingController _deliveryAddressController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _lengthController = TextEditingController();
  TextEditingController _weightsController = TextEditingController();

  @override
  void dispose() {
    _pickupAddressController.dispose();
    _deliveryAddressController.dispose();
    _weightController.dispose();
    _quantityController.dispose();
    _heightController.dispose();
    _lengthController.dispose();
    _weightsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

            // Pickup Text
            Texts(
              ffem: ffem,
              fem: fem,
              text: "Pick-Up Address",
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 0 * fem),
              child: TextFormField(
                controller: _pickupAddressController,
                decoration: InputDecoration(
                  hintText: 'Pickup Address',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding: EdgeInsets.all(15),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter  pickup address.';
                  }
                  return null;
                },
              ),
            ),

            Texts(
              ffem: ffem,
              fem: fem,
              text: "Delivery Address",
            ),
            // Delivery Address
            Padding(
              padding: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 0 * fem),
              child: TextFormField(
                controller: _deliveryAddressController,
                decoration: InputDecoration(
                  hintText: 'Enter delivery Address',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding: EdgeInsets.all(15),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the delivery address.';
                  }
                  return null;
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
            // Weigth Form
            Padding(
              padding: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 0 * fem),
              child: TextFormField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter approximate weight of goods',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(5)),
                    contentPadding: EdgeInsets.all(15)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the weight.';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 16),
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
                    child: TextFormField(
                      controller: _lengthController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Length',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(5)),
                          contentPadding: EdgeInsets.all(15)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter the length.';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
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
                  SizedBox(width: 10.0),
                  Expanded(
                    child: TextFormField(
                      controller: _weightsController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Weight',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(5)),
                          contentPadding: EdgeInsets.all(15)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter the weight.';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 5.0),
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
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _heightController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Height',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(5)),
                          contentPadding: EdgeInsets.all(15)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter the height.';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            //Quantity Text
            Texts(
              ffem: ffem,
              fem: fem,
              text: "Quantity",
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 0 * fem),
              child: TextFormField(
                controller: _quantityController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Quantity',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(5)),
                    contentPadding: EdgeInsets.all(15)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ' Enter value.';
                  }
                  return null;
                },
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
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Process the form data
                    // e.g., Send the order details to an API
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PopUpScreen()));
                  }
                },
                bgColor: const Color(0xff003049)),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
