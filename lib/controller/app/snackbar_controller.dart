import 'package:flutter/material.dart';
import 'package:note_card/view/resources/strings.dart';

void showErrorSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: snackBarActionString,
        onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        textColor: Colors.yellow[300],
      ),
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
