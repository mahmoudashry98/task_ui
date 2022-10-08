import 'package:flutter/material.dart';

import '../../../core/utils/assets_images_path.dart';
import '../../../core/widgets/custom_text.dart';

// ignore: must_be_immutable
class SenderWidget extends StatelessWidget {
  String text;
  SenderWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color.fromRGBO(247, 248, 248, 1),
            child: Image.asset(bootIcon),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(247, 250, 250, 1),
            ),
            child: CustomText(
              textAlign: TextAlign.start,
              text: text,
              color: const Color.fromRGBO(44, 44, 45, 1),
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
