// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CardsStore on _CardsStore, Store {
  late final _$cardsContentsAtom =
      Atom(name: '_CardsStore.cardsContents', context: context);

  @override
  ObservableList<String> get cardsContents {
    _$cardsContentsAtom.reportRead();
    return super.cardsContents;
  }

  @override
  set cardsContents(ObservableList<String> value) {
    _$cardsContentsAtom.reportWrite(value, super.cardsContents, () {
      super.cardsContents = value;
    });
  }

  late final _$editingAtom =
      Atom(name: '_CardsStore.editing', context: context);

  @override
  bool get editing {
    _$editingAtom.reportRead();
    return super.editing;
  }

  @override
  set editing(bool value) {
    _$editingAtom.reportWrite(value, super.editing, () {
      super.editing = value;
    });
  }

  late final _$editingIndexAtom =
      Atom(name: '_CardsStore.editingIndex', context: context);

  @override
  int? get editingIndex {
    _$editingIndexAtom.reportRead();
    return super.editingIndex;
  }

  @override
  set editingIndex(int? value) {
    _$editingIndexAtom.reportWrite(value, super.editingIndex, () {
      super.editingIndex = value;
    });
  }

  late final _$loadCardsContentsAsyncAction =
      AsyncAction('_CardsStore.loadCardsContents', context: context);

  @override
  Future<void> loadCardsContents(CardsStore store) {
    return _$loadCardsContentsAsyncAction
        .run(() => super.loadCardsContents(store));
  }

  late final _$addCardContentAsyncAction =
      AsyncAction('_CardsStore.addCardContent', context: context);

  @override
  Future<void> addCardContent(String content) {
    return _$addCardContentAsyncAction.run(() => super.addCardContent(content));
  }

  late final _$removeCardAsyncAction =
      AsyncAction('_CardsStore.removeCard', context: context);

  @override
  Future<void> removeCard(int index) {
    return _$removeCardAsyncAction.run(() => super.removeCard(index));
  }

  late final _$updateCardContentAsyncAction =
      AsyncAction('_CardsStore.updateCardContent', context: context);

  @override
  Future<void> updateCardContent(String text) {
    return _$updateCardContentAsyncAction
        .run(() => super.updateCardContent(text));
  }

  late final _$_CardsStoreActionController =
      ActionController(name: '_CardsStore', context: context);

  @override
  void updateCardsContentsList(List<String> newList) {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
        name: '_CardsStore.updateCardsContentsList');
    try {
      return super.updateCardsContentsList(newList);
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startEditing(int index) {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
        name: '_CardsStore.startEditing');
    try {
      return super.startEditing(index);
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopEditing() {
    final _$actionInfo = _$_CardsStoreActionController.startAction(
        name: '_CardsStore.stopEditing');
    try {
      return super.stopEditing();
    } finally {
      _$_CardsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cardsContents: ${cardsContents},
editing: ${editing},
editingIndex: ${editingIndex}
    ''';
  }
}
