import 'package:flutter/foundation.dart';

class Flash_Card {
  String id;
  String front;
  String hiraganaReading;
  String hanChineseReading;
  String meaning;
  String knowledge;
  String deck;
  String example;

  Flash_Card({
    this.knowledge = "Chua hoc",
    required this.id,
    required this.deck,
    required this.front,
    required this.hiraganaReading,
    required this.hanChineseReading,
    required this.meaning,
    required this.example,
  });
}
