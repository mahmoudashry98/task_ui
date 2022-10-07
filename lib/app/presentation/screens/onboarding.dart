import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/assets_images_path.dart';
import 'package:task_ui/core/utils/media_query_values.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 90,
                vertical: 140,
              ),
              child: Image.asset(
                alignment: Alignment.center,
                background,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.height * 0.21,
                //left: context.width * 0.2,
                //right: context.width * 0.22,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 140),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hi, My name is ',
                              style: TextStyle(
                                color: Color.fromRGBO(16, 16, 16, 0.8),
                                fontSize: 19,
                              ),
                            ),
                            TextSpan(
                              text: 'Oranobot\n',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'I will always be there to\nhelp and assist you.\n \n \nSay Start To go to Next. ',
                              style: TextStyle(
                                color: Color.fromRGBO(16, 16, 16, 0.8),
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
