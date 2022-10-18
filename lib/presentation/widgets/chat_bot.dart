import 'package:flutter/material.dart';
import 'package:task_ui/core/chatbot_model.dart';
import 'package:task_ui/core/widgets/custom_text.dart';

import '../../core/utils/assets_images_path.dart';

class ChatBotWidget extends StatelessWidget {
  const ChatBotWidget({
    Key? key,
    required this.chatBotModel,
  }) : super(key: key);

  final List<ChatBotModel> chatBotModel;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: chatBotModel.length,
      itemBuilder: (context, index) => Row(
          mainAxisAlignment: chatBotModel[index].isMe
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            chatBotModel[index].isMe
                ? const SizedBox()
                : CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromRGBO(247, 248, 248, 1),
                    child: Image.asset(bootIcon),
                  ),
            const SizedBox(
              width: 14,
            ),
            Container(
              width: 260,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: const Color.fromRGBO(207, 217, 222, 1)),
                color: chatBotModel[index].isMe
                    ? const Color.fromRGBO(22, 145, 155, 1)
                    : const Color.fromRGBO(216, 216, 216, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: CustomText(
                          text: chatBotModel[index].message,
                          size: 14,
                          color:
                              chatBotModel[index].isMe ? Colors.white : null)),
                ],
              ),
            ),
            chatBotModel[index].isMe
                ? const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(
                      Icons.done_all,
                      color: Color.fromRGBO(22, 145, 155, 1),
                    ))
                : const SizedBox(),
          ]),
      separatorBuilder: (context, index) => const SizedBox(height: 45),
    );
  }
}
