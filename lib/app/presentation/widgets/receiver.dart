import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/media_query_values.dart';

import '../../../core/widgets/custom_text.dart';

class ReceiverWidget extends StatelessWidget {
  String text;
  ReceiverWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          // height: context.height * 0.066,
          // width: context.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(22, 145, 155, 1),
          ),
          child: CustomText(
            textAlign: TextAlign.start,
            text: text,
            fontWeight: FontWeight.bold,
            size: 14,
            color: const Color.fromRGBO(239, 248, 248, 1),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.done_all,
          color: Color.fromRGBO(22, 145, 155, 1),
        )
      ],
    );
  }
}
