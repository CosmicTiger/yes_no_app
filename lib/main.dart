import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/chat/screens/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void onPressedButton() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,

      /// NOTE: Here we are using the custom theme we created in the AppTheme class.
      /// By doing this, we could potentially change the color of the application during runtime.
      theme: AppTheme(selectedColor: 6)
          .theme(), // NOTE: Usually this is the way we customized our Application.
      home: const ChatScreen(),
    );
  }
}
