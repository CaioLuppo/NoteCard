import 'package:flutter/material.dart';
import 'package:note_card/controller/app/snackbar_controller.dart';
import 'package:note_card/model/store/cards_store.dart';
import 'package:note_card/view/resources/strings.dart';
import 'package:note_card/view/screens/note_cards/note_cards_screen.dart';

void removeIfCan(BuildContext context, CardsStore store, int index) {
  if (index != store.editingIndex) {
    final sureDialog = AlertDialog(
      title: const Text(sureDialogTitle),
      content: Text("$sureDialogContent ${index+1}\"?"),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("NÃO"),
        ),
        ElevatedButton(
          onPressed: () {
            NoteCardsScreen.store.removeCard(index);
            Navigator.pop(context);
          },
          child: const Text("SIM"),
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (_) => sureDialog,
      barrierDismissible: false,
    );
  } else {
    showErrorSnackBar(context, "Termine de editar primeiro!");
  }
}
