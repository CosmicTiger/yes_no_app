import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message messageToRender;

  const MyMessageBubble({super.key, required this.messageToRender});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,

      /// NOTE: CrossAxisAlignment is an enum that represents the cross-axis alignment.
      /// In this case, we are using it to align the children of the Column to the end of the cross-axis.
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(messageToRender.text,
                style: const TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
