import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ui/presentation/cubit/state.dart';

import '../../core/chatbot_model.dart';
import '../../core/favourite_model.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int index = 0;
  String? firstName;
  bool fav = false;
  String? lastName;
  final List<ChatBotModel> chatBotModel = [
    ChatBotModel(message: "Hi, Whats Your First Name?", isMe: false),
  ];
  void sendMessage({
    required TextEditingController message,
    required bool isMe,
  }) {
    chatBotModel.add(ChatBotModel(
      message: message.text,
      isMe: isMe,
    ));
    if (index == 0) {
      firstName = message.text;
      chatBotModel.add(
        ChatBotModel(
          message: "${"Ok"}${","} $firstName ${"Whats Your Last Name?"}",
          isMe: false,
        ),
      );
    } else if (index == 1) {
      lastName = message.text;
      chatBotModel.add(ChatBotModel(
          message:
              "${"Mr"} $firstName $lastName ${","} ${"What's your Title?"}",
          isMe: false));
    } else if (index == 2) {
      chatBotModel.add(ChatBotModel(
          message: "What Categories you will need expert In?", isMe: false));
    } else if (index == 3) {
      message.text = "";
      emit(LastQuestionState());
      return;
    }
    message.text = "";
    index++;
    emit(NextQuestionState());
  }

  void changeFav({bool? isFav}) {
    fav = isFav!;
    emit(ChageFavColorState());
  }
}
