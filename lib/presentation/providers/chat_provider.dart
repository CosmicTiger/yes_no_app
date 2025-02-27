import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "What's up best Psylock in NA?", fromWho: FromWho.me),
    Message(
        text: "Not much, just chilling. How about you?",
        fromWho: FromWho.other),
  ];

  Future<void> sendMessage(String message) async {
    /// TODO: Implement sending message
  }
}
