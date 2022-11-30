import 'package:flutter/material.dart';
import '/models/card.dart';

/// The [Favorites] class holds a list of favorite items saved by the user.
class Favorites extends ChangeNotifier {
  final List<Flash_Card> _favoriteItems = [];

  List<Flash_Card> get items => _favoriteItems;

  void add(Flash_Card itemNo) {
    _favoriteItems.add(itemNo);
    notifyListeners();
  }

  void remove(Flash_Card itemNo) {
    _favoriteItems.remove(itemNo);
    notifyListeners();
  }
}
