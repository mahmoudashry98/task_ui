import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  String text;
  double height;
  double width;
  CustomButton({
    required this.text,
    required this.height,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(22, 145, 155, 1),
          borderRadius: BorderRadius.circular(5)),
      height: height,
      width: width,
      child: Center(
        child: CustomText(
          text: text,
          color: const Color.fromRGBO(243, 249, 250, 1),
          size: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
