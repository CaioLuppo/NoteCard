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
        textAlign: TextAlign.center,
        textInputAction: TextInputAction.send,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          hintText: cardInputHint,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        onEditingComplete: () async {
          final text = controller.text;
          final onlySpace = RegExp(r"^\s+$");
          if (text.isEmpty || onlySpace.hasMatch(text)) {
            showErrorSnackBar(context, emptyNoteMessage);
          } else {
            canStop = false;
            await editOrAddCard(text, store);
            canStop = true;
            controller.clear();
            if (context.mounted) FocusScope.of(context).unfocus();
          }
        },
      ),
    );
  }
}
