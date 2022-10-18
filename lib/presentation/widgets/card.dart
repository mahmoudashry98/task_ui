import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ui/core/utils/media_query_values.dart';
import 'package:task_ui/presentation/cubit/cubit.dart';
import 'package:task_ui/presentation/cubit/state.dart';

import '../../../core/widgets/custom_text.dart';

class CardWidget extends StatelessWidget {
  String image;
  String rate;
  String name;
  String title;
  CardWidget({
    required this.image,
    required this.rate,
    required this.title,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return SizedBox(
          width: context.width * 0.4,
          child: Card(
            color: const Color.fromRGBO(255, 255, 255, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: '($rate)',
                        color: const Color.fromRGBO(163, 163, 163, 1),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CustomText(
                    text: name,
                    color: const Color.fromRGBO(163, 163, 163, 1),
                    size: 14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    bottom: 15,
                    top: 10,
                  ),
                  child: CustomText(
                    text: title,
                    color: const Color.fromRGBO(163, 163, 163, 1),
                    size: 12,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
