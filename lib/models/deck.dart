import 'package:flutter/material.dart';

class Deck {
  final String id;
  final String title;
  final Color color;

  const Deck({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
