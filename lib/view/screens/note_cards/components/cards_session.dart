part of note_cards;

class CardsSession extends StatelessWidget {
  const CardsSession({
    super.key,
    required this.store,
    required this.controller,
  });

  final CardsStore store;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Observer(
          builder: (_) {
            store.loadCardsContents(store);
            return store.cardsContents.isEmpty
                ? const EmptyMessage()
                : CardList(store: store, controller: controller);
          },
        );
      },
    );
  }
}
