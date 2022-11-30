import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/models/card.dart';
import '../flashcard/quest_item.dart';
import '/screens/favorite.dart';

import '../flashcard/all_constants.dart';
import '../flashcard/data_n2.dart';
import '../flashcard/reusable_card.dart';

class HomePage extends StatefulWidget {
  final String deckI;

  HomePage(this.deckI);
  static const routeName = '/';
  @override
  _HomePageState createState() => _HomePageState(deckI);
}

class _HomePageState extends State<HomePage> {
  final String deckIu;
  _HomePageState(this.deckIu);
  late final deckCard =
      userFlashCard.where((Card) => Card.deck.contains(deckIu)).toList();
  int _currentIndexNumber = 0;
  late double _initial = 1 / deckCard.length;
  @override
  Widget build(BuildContext context) {
    String value = (_initial * deckCard.length).toStringAsFixed(0);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Flashcards App"),
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, FavoritesPage.routeName);
            },
            icon: const Icon(Icons.favorite_border),
            label: const Text('Favorites'),
          ),
        ],
      ),
      // backgroundColor: mainColor,
      // toolbarHeight: 80,
      // elevation: 5,
      // shadowColor: mainColor,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Text("Question $value of ${deckCard.length} Completed",
                    style: otherTextStyle),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    minHeight: 5,
                    value: _initial,
                  ),
                ),
              ],
            ),
            questItem(
              currInt: _currentIndexNumber,
              quizId: deckCard[_currentIndexNumber],
              currDeck: deckCard,
            ),
            Text("Tab to see Answer", style: otherTextStyle),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      showPreviousCard();
                      updateToPrev();
                    },
                    icon: Icon(FontAwesomeIcons.handPointLeft, size: 30),
                    label: Text(""),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.only(
                            right: 20, left: 25, top: 15, bottom: 15))),
                ElevatedButton.icon(
                    onPressed: () {
                      showNextCard();
                      updateToNext();
                    },
                    icon: Icon(FontAwesomeIcons.handPointRight, size: 30),
                    label: Text(""),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.only(
                            right: 20, left: 25, top: 15, bottom: 15))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void updateToNext() {
    setState(() {
      _initial = _initial + 1 / deckCard.length;
      if (_initial > 1.0) {
        _initial = 1 / deckCard.length;
      }
    });
  }

  void updateToPrev() {
    setState(() {
      _initial = _initial - 1 / deckCard.length;
      if (_initial < 1 / deckCard.length) {
        _initial = 1.0;
      }
    });
  }

  void showNextCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber + 1 < deckCard.length)
          ? _currentIndexNumber + 1
          : 0;
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber - 1 >= 0)
          ? _currentIndexNumber - 1
          : deckCard.length - 1;
    });
  }
}
