import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/assets_images_path.dart';
import 'package:task_ui/core/utils/media_query_values.dart';
import 'package:task_ui/core/widgets/custom_button.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/widgets/custom_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    // flex: 12,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        background,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50,
                      top: 25,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRouts.getStartedScreen);
                      },
                      child: CustomButton(
                        text: 'Next',
                        height: context.height * 0.05,
                        width: context.width * 0.3,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 29,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          icon,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const CustomText(
                          text: 'English',
                          color: Color.fromRGBO(44, 44, 45, 1),
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
