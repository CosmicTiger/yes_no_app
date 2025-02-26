import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/other_message_bubble.dart';

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
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// NOTE: SafeArea is a widget that allows you to avoid the status bar, notches, and other system-provided areas.
    /// As it names suggests, move your application content to a safe area that does not affect the system-provided widgets.
    /// Therefore, not affecting UX. In this case, we are using it to avoid the menu bar at
    /// the bottom of the screen vertically, and the status bar with menu bar horizontally.
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),

        /// NOTE: EdgeInsets.symmetric is a constructor that creates an EdgeInsets object with the same value for the horizontal and vertical dimensions.
        child: Column(children: [
          // Expanded(child: Container(color: Colors.grey[200])), NOTE: This is a placeholder for the chat messages.
          /// NOTE: Expanded is a widget that expands a child of a Row, Column, or Flex so that the child fills the available space.
          /// In this case, we are using it to expand the Container to fill the available space.
          Expanded(child: ListView.builder(
            // itemCount: 100, /// NOTE: When ListView has no itemCount explicitly defined, it will create an infinite list.
            itemBuilder: (context, index) {
              /// NOTE: ListView.builder can have an arrow function or a structured function that is called for each item in the list.
              /// Or directly another widget. In this case, we are using a structured functions.
              // return const MyMessageBubble();

              return (index % 2 == 0)
                  ? const MyMessageBubble()
                  : const OtherMessageBubble();
            },
          )

              /// NOTE: ListView.builder is a constructor that creates a scrollable, linear array of widgets.
              /// In this case, we are using it to create a list of chat messages that in runtime will manage all the items that are currently at the screen,
              /// the ones that were already in the screen and the ones that are going to be in the screen. All other elements are going to be disposed until they are requested by demand.
              ),
          Text('Hello chat'),
        ]),
      ),
    );
  }
}
