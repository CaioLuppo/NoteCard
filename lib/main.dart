import 'package:flutter/material.dart';
import 'package:note_card/view/resources/theme.dart';
import 'package:note_card/view/screens/login/login_screen.dart';
import 'package:note_card/view/screens/note_cards/note_cards_screen.dart';

void main() {
  runApp(const NoteCardApp());
}

class NoteCardApp extends StatelessWidget {
  static final PageController pageController = PageController();

  const NoteCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: backgroundBoxDecoration,
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                    child: PageView(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [LoginScreen(), NoteCardsScreen()],
                )),
                const PrivacyLabel(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
