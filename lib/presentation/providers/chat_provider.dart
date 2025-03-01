import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: "What's up best Psylocke in NA?", fromWho: FromWho.me),
    Message(
        text: "Not much, just chilling. How about you?",
        fromWho: FromWho.other),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) {
      return;
    }

    final newMessage = Message(text: text, fromWho: FromWho.me);

    messageList.add(newMessage);

    if (text.endsWith('?')) {
      otherReply();
    }

    notifyListeners();
    moveScrollToBottom();

    /// NOTE: This is effectively setState but equivalent for ChangeNotifier in Providers library.
  }

  Future<void> otherReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    /// NOTE: This is only for the purpose of let Flutter render the new message before scrolling to the bottom.
    /// To have better UX.

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,

      /// NOTE: This sets the position to where the scroll would be. In this case, the bottom which is the max limit.
      duration: const Duration(milliseconds: 300),

      /// NOTE: This sets the duration of the animation.
      curve: Curves.easeOut,

      /// NOTE: This sets the type of the animation.
    );
  }
}
