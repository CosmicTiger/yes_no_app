import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hello! 😀', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
