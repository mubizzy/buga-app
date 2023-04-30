import 'package:flutter/material.dart';

import '../../../constant.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  // ignore: library_private_types_in_public_api
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: kTertiary2,
          checkColor: kTertiary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(
          widget.text,
          style: kBodyText3,
        ),
      ],
    );
  }
}
