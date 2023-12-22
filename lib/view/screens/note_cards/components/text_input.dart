part of note_cards;

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final CardsStore store;

  const TextInput({
    super.key,
    required this.store,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    bool canStop = true;
    return Focus(
      onFocusChange: (value) {
        cancelEditing(value, canStop, store, controller);
      },
      child: TextField(
        controller: controller,
        textInputAction: TextInputAction.send,
        onSubmitted: (text) async {
          canStop = false;
          await editOrAddCard(text, store);
          canStop = true;
          controller.clear();
        },
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  
}
