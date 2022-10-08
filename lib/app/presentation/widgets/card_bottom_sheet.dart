import 'package:flutter/material.dart';

import '../../../core/utils/assets_images_path.dart';
import '../../../core/widgets/custom_text.dart';

class CardBottomSheetWidget extends StatelessWidget {
  String image;
  String title;
  String text;
  CardBottomSheetWidget({
    required this.image,
    required this.text,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Image.asset(
                      image,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: title,
                          color: Colors.black54,
                          size: 14,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          text: text,
                          color: const Color.fromRGBO(163, 163, 163, 1),
                          size: 12,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(36, 39, 39, 0.5),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
