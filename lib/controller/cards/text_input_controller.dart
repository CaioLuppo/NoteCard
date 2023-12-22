import 'package:flutter/material.dart';
import 'package:note_card/model/store/cards_store.dart';

Future<void> editOrAddCard(String text, CardsStore store) async {
  if (store.editing) {
    await store.updateCardContent(text);
    store.stopEditing();
  } else {
    store.addCardContent(text);
  }
}

void cancelEditing(
  bool value,
  bool canStop,
  CardsStore store,
  TextEditingController controller,
) {
  if (!value && canStop) {
    store.stopEditing();
    controller.clear();
  }
}
