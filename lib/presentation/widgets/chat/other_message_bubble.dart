import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class OtherMessageBubble extends StatelessWidget {
  final Message messageToRender;

  const OtherMessageBubble({super.key, required this.messageToRender});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      /// NOTE: CrossAxisAlignment is an enum that represents the cross-axis alignment.
      /// In this case, we are using it to align the children of the Column to the start of the cross-axis.
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(messageToRender.text,
                style: const TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        if (messageToRender.imageUrl != null)
          _ImageBubble(messageToRender.imageUrl!),
        SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;

  const _ImageBubble(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imageUrl,
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;

            return Container(
              width: size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text('Mi amor está enviando una imagen'),
            );
          },
        ));
  }
}
