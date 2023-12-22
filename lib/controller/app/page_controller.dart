import 'package:flutter/material.dart';
import 'package:note_card/main.dart';

void changePage(AppPage page) {
  NoteCardApp.pageController.animateToPage(
    page.index,
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeInOut,
  );
}

enum AppPage { loginScreen, noteCardsScreen }
