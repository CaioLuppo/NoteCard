part of note_cards;

class NoteCard extends StatelessWidget {
  final int index;
  final String content;
  final TextEditingController inputController;
  final CardsStore store;

  const NoteCard(
    this.index,
    this.content, {
    super.key,
    required this.inputController,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Texto Digitado ${index + 1}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  store.startEditing(index);
                  inputController.text = content;
                },
                icon: const Icon(Icons.edit),
              ),
              Observer(
                builder: (_) => IconButton(
                  onPressed: () => removeIfCan(context, store, index),
                  icon: const Icon(Icons.delete),
                ),
              ),
            ],
          ),
          Container(
            height: 2,
            color: Colors.black38,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              content,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
