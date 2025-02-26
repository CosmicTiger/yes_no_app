import 'package:flutter/material.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                'Duis velit pariatur consectetur nulla voluptate. Aliqua commodo proident anim do pariatur magna ex non minim. Fugiat labore incididunt est laborum. Deserunt laboris id commodo aliqua culpa sint mollit Lorem ea nostrud aliquip ipsum. 😀',
                style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    print(size);

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://yesno.wtf/assets/no/20-56c4b19517aa69c8f7081939198341a4.gif',
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
        ));
  }
}
