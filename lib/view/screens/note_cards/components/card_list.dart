part of note_cards;

class CardList extends StatelessWidget {
  const CardList({
    super.key,
    required this.store,
    required this.controller,
  });

  final CardsStore store;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 8,
      ),
      itemCount: store.cardsContents.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return NoteCard(
          index,
          store.cardsContents[index],
          inputController: controller,
          store: store,
        );
      },
    );
  }
}
