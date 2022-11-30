import 'package:flutter/foundation.dart';

import '../models/card.dart';

List<Flash_Card> cardListx = [];

void addCard(String front, String hiraganaReading, String hanChineseReading,
    String meaning, String example, String deck) {
  List<Flash_Card> cardNew = cardListx;
  final newCard = Flash_Card(
      id: UniqueKey().toString(),
      front: front,
      hiraganaReading: hiraganaReading,
      hanChineseReading: hanChineseReading,
      meaning: meaning,
      example: example,
      deck: deck);
  cardListx.add(newCard);
}
