import 'package:flutter/material.dart';

import '../../../core/widgets/custom_text.dart';

class CheckBoxWidget extends StatefulWidget {
  bool checked;
  String text;
  CheckBoxWidget({
    required this.checked,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 40,
        ),
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(
              width: 1.0,
              color: Color.fromRGBO(207, 217, 222, 1),
            ),
          ),
          checkColor: Colors.white,
          activeColor: const Color.fromRGBO(22, 145, 155, 1),
          value: widget.checked,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onChanged: (value) {
            setState(() {
              widget.checked = value!;
            });
          },
        ),
        CustomText(
          text: widget.text,
          size: 14,
          color: const Color.fromRGBO(44, 44, 45, 1),
        ),
      ],
    );
  }
}
