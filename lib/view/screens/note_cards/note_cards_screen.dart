library note_cards;

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:note_card/controller/cards/note_card_controller.dart';
import 'package:note_card/controller/cards/text_input_controller.dart';
import 'package:note_card/model/store/cards_store.dart';
import 'package:note_card/view/resources/strings.dart';

part 'components/card_list.dart';
part 'components/cards_session.dart';
part 'components/empty_message.dart';
part 'components/note_card.dart';
part 'components/text_input.dart';

class NoteCardsScreen extends StatelessWidget {
  static final store = CardsStore();

  const NoteCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CardsSession(store: store, controller: controller),
          TextInput(store: store, controller: controller),
        ],
      ),
    );
  }
}




