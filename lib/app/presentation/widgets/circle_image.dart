import 'package:flutter/material.dart';

import '../../../core/utils/assets_images_path.dart';
import '../../../core/widgets/custom_text.dart';

class CircleWidget extends StatelessWidget {
  String image;
  String name;
  CircleWidget({
    required this.image,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              backgroundColor: const Color.fromRGBO(223, 232, 235, 1),
              radius: 30,
            ),
            const Icon(
              Icons.circle,
              size: 14,
              color: Color.fromRGBO(98, 221, 145, 1),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
         Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CustomText(
            text: name,
            color: const Color.fromRGBO(163, 163, 163, 1),
            size: 9,
          ),
        ),
      ],
    );
  }
}
