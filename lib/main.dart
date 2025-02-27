import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      /// NOTE: MultiProvider handles the fact of manipulating the state management of the whole application between different
      /// NOTE: Segmnets of widgets
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),

        /// NOTE: _ resembles the context when not needed
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,

        /// NOTE: Here we are using the custom theme we created in the AppTheme class.
        /// By doing this, we could potentially change the color of the application during runtime.
        theme: AppTheme(selectedColor: 6)
            .theme(), // NOTE: Usually this is the way we customized our Application.
        home: const ChatScreen(),
      ),
    );
  }
}
