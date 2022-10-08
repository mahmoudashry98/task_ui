import 'package:flutter/material.dart';
import 'package:task_ui/app/presentation/widgets/receiver.dart';

import 'package:task_ui/core/widgets/custom_text.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/assets_images_path.dart';
import '../widgets/check_box.dart';
import '../widgets/sender.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool security = false;
    bool supplyChain = false;
    bool informationTechnology = false;
    bool humanResource = false;
    bool businessResearch = false;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SenderWidget(
                text: 'Hi, Whats You Name Firstname?',
              ),
              const SizedBox(
                height: 10,
              ),
              ReceiverWidget(
                text: 'Abdalla',
              ),
              const SizedBox(
                height: 20,
              ),
              SenderWidget(
                text: 'Ok, Abdalla Whats Your Lastname?',
              ),
              const SizedBox(
                height: 10,
              ),
              ReceiverWidget(
                text: 'Salah',
              ),
              const SizedBox(
                height: 20,
              ),
              SenderWidget(
                text: 'Mr Abdalla Salah, What\'s your Title? ',
              ),
              const SizedBox(
                height: 10,
              ),
              ReceiverWidget(
                text: 'Front-end Developer',
              ),
              const SizedBox(
                height: 20,
              ),
              SenderWidget(
                text: 'What Categories you will need\nexpert In? ',
              ),
              const SizedBox(
                height: 15,
              ),
              CheckBoxWidget(
                checked: security,
                text: 'Security',
              ),
              const SizedBox(
                height: 5,
              ),
              CheckBoxWidget(
                checked: supplyChain,
                text: 'Supply Chain',
              ),
              const SizedBox(
                height: 5,
              ),
              CheckBoxWidget(
                checked: informationTechnology,
                text: 'Information Technology',
              ),
              const SizedBox(
                height: 5,
              ),
              CheckBoxWidget(
                checked: humanResource,
                text: 'Human Resource',
              ),
              const SizedBox(
                height: 5,
              ),
              CheckBoxWidget(
                checked: businessResearch,
                text: 'Business Research',
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomText(
                text: 'Say Done, Or Press Send to Apply',
                size: 14,
                color: Color.fromRGBO(163, 163, 163, 1),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                indent: 1,
                color: Color.fromRGBO(163, 163, 163, 1),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(237, 241, 242, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    hintText: 'Write your message here...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRouts.homeScreen);
                },
                child: Image.asset(
                  strokeImage,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
