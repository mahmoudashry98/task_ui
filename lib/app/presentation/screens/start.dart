import 'package:flutter/material.dart';
import 'package:task_ui/config/routes/app_routes.dart';
import 'package:task_ui/core/utils/assets_images_path.dart';
import 'package:task_ui/core/utils/media_query_values.dart';
import 'package:task_ui/core/widgets/custom_button.dart';
import 'package:task_ui/core/widgets/custom_text.dart';

import '../../../core/utils/app_theme_colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(196, 196, 196, 1),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              startImage,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: CustomText(
                      text: 'Oranos',
                      color: AppColors.kTextColor1,
                      size: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                      top: 12,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(22, 145, 155, 1),
                      radius: 6,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomText(
                text: 'Expert From Every Planet',
                color: Color.fromRGBO(137, 138, 139, 1),
                size: 19,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 119,
                right: 26,
                left: 26,
              ),
              child: CustomButton(
                text: 'Get Started',
                height: context.height * 0.057,
                width: context.width * 350,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 53,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    text: 'Don’t have an account?',
                    color: Color.fromRGBO(44, 44, 45, 1),
                    size: 14,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouts.onBoardingScreen);
                    },
                    child: const CustomText(
                      text: 'SignUp',
                      color: Color.fromRGBO(22, 145, 155, 1),
                      size: 14,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
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
          )
        ],
      ),
    );
  }
}
