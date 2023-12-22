import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'cards_store.g.dart';

class CardsStore = _CardsStore with _$CardsStore;

abstract class _CardsStore with Store {
  final cardsContentesKey = "cardsContents";

  @observable
  ObservableList<String> cardsContents = ObservableList<String>();

  @observable
  bool editing = false;

  @observable
  int? editingIndex;

  @action
  Future<void> loadCardsContents(CardsStore store) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final List<String>? cardsContents = preferences.getStringList(
      cardsContentesKey,
    );

    if (cardsContents == null) {
      store.updateCardsContentsList([]);
    }
    store.updateCardsContentsList(cardsContents!);
  }

  @action
  Future<void> addCardContent(String content) async {
    final preferences = await SharedPreferences.getInstance();
    cardsContents.add(content);
    preferences.setStringList(cardsContentesKey, cardsContents);
  }

  @action
  Future<void> removeCard(int index) async {
    final preferences = await SharedPreferences.getInstance();
    cardsContents.removeAt(index);
    if (editingIndex != null) editingIndex = editingIndex! - 1;
    preferences.setStringList(cardsContentesKey, cardsContents);
  }

  @action
  void updateCardsContentsList(List<String> newList) {
    cardsContents = ObservableList.of(newList);
  }

  @action
  void startEditing(int index) {
    editing = true;
    editingIndex = index;
    print("editing: $editingIndex");
  }

  @action
  Future<void> updateCardContent(String text) async {
    final preferences = await SharedPreferences.getInstance();
    print("CONT: $cardsContents, $editingIndex");
    cardsContents[editingIndex!] = text;

    preferences.setStringList(cardsContentesKey, cardsContents);
  }

  @action
  void stopEditing() {
    editingIndex = null;
    editing = false;
  }
}
