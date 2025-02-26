import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// NOTE: Padding is a widget that adds padding around its child. Similar as apply padding in CSS.
        leading: const Padding(
          padding: EdgeInsets.all(4.0),

          /// NOTE: EdgeInsets.all is a constructor that creates an EdgeInsets object with the same value for all dimensions.

          /// NOTE: CircleAvatar is a Widget that represents a user's profile image.
          /// In this case, we are using it to represent the user's profile image in the AppBar.
          /// The backgroundImage property is used to set the image of the CircleAvatar.
          /// In this case, we are using a NetworkImage to load the image from the internet.
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://rivalskins.com/wp-content/uploads/marvel-assets/items/costume/19/img_vengeance.webp"),
          ),
        ),
        title: const Text('My buddy! 😀'),
        centerTitle: false,

        /// NOTE: centerTitle is a property that allows you to center the title of the AppBar.
      ),
      body: Center(
        child: const Text('Chat Screen'),
      ),
    );
  }
}
