import 'package:flutter/material.dart';
import 'package:note_card/controller/app/snackbar_controller.dart';
import 'package:note_card/model/store/cards_store.dart';
import 'package:note_card/view/screens/note_cards/note_cards_screen.dart';

void removeIfCan(BuildContext context, CardsStore store, int index) {
    if (index != store.editingIndex) {
      NoteCardsScreen.store.removeCard(index);
    } else {
      showErrorSnackBar(context, "Termine de editar primeiro!");
    }
  }