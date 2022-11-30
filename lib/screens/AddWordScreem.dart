import 'package:flutter/material.dart';
import '../models/card.dart';
import '../providers/decks.dart';
import '../screens/filelist.dart';
import 'package:provider/provider.dart';
import '../providers/decks.dart';
import '../flashcard/data_n2.dart';

class addWordScreen extends StatefulWidget {
  static const routeName = '/add-word';

  const addWordScreen({super.key});

  @override
  State<addWordScreen> createState() => _addWordScreenState();
}

class _addWordScreenState extends State<addWordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _front = TextEditingController();
  final _hiraganaReading = TextEditingController();
  final _hanChineseReading = TextEditingController();
  final _meaning = TextEditingController();
  final _deck = TextEditingController();
  final _example = TextEditingController();

  void _saveWord(Flash_Card newCard) {
    userFlashCard.add(newCard);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new Place'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            TextEntry(front: _front, textInsert: 'Chữ Hán'),
            TextEntry(front: _hiraganaReading, textInsert: 'Đọc Hiragana'),
            TextEntry(front: _hanChineseReading, textInsert: 'Đọc Hán tự'),
            TextEntry(front: _meaning, textInsert: 'Ý nghĩa'),
            TextEntry(front: _deck, textInsert: 'Cho vào deck nào'),
            TextEntry(front: _example, textInsert: 'Ví dụ'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    Flash_Card newCard = Flash_Card(
                      id: UniqueKey().toString(),
                      front: _front.text,
                      hiraganaReading: _hiraganaReading.text,
                      hanChineseReading: _hanChineseReading.text,
                      meaning: _meaning.text,
                      example: _example.text,
                      deck: _deck.text,
                    );
                    setState(() {
                      _saveWord(newCard);
                    });
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextEntry extends StatelessWidget {
  const TextEntry({
    Key? key,
    required TextEditingController front,
    required this.textInsert,
  })  : _front = front,
        super(key: key);

  final TextEditingController _front;
  final String? textInsert;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _front,
      decoration: InputDecoration(
        labelText: textInsert,
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
