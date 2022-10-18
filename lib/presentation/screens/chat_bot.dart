import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task_ui/core/widgets/custom_text.dart';
import 'package:task_ui/presentation/cubit/cubit.dart';
import 'package:task_ui/presentation/cubit/state.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/assets_images_path.dart';
import '../widgets/chat_bot.dart';
import '../widgets/check_box.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({Key? key}) : super(key: key);

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  var messageController = TextEditingController();
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
          child: BlocConsumer<AppCubit, AppState>(
            listener: ((context, state) {
              if (state is LastQuestionState) {
                Navigator.pushReplacementNamed(context, AppRouts.homeScreen);
              }
            }),
            builder: (context, state) {
              var cubit = AppCubit.get(context);
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ChatBotWidget(chatBotModel: cubit.chatBotModel),
                    const SizedBox(height: 10),
                    cubit.index == 3
                        ? Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                const SizedBox(height: 80),
                              ],
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
              );
            },
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
                  controller: messageController,
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
                  AppCubit.get(context).sendMessage(
                    message: messageController,
                    isMe: true,
                  );
                  //messageController = "";
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
