import 'package:flutter/material.dart';
import '../../../constant.dart';

class LargeIconButton extends StatelessWidget {
  const LargeIconButton({
    Key? key,
    required this.buttonName,
    required this.iconImage,
  }) : super(key: key);

  final String buttonName, iconImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          // width: 8,
          color: kScaffoldBackground,
        ),
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          // decoration:  BoxDecoration()
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(12),
          // ),
        ),
        child: SizedBox(
          height: 30,
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Image.asset(iconImage),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  buttonName,
                  style: kBodyText2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
