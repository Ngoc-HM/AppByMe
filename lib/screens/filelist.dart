import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../errorfinal.dart';

import '../providers/decks.dart';
import './AddWordScreem.dart';
import '../providers/decks.dart';
import '../flashcard/data_n2.dart';

class trangtrong2 extends StatefulWidget {
  final String Decki;
  trangtrong2(this.Decki);
  @override
  State<trangtrong2> createState() => _trangtrong2State(Decki);
}

class _trangtrong2State extends State<trangtrong2> {
  final String deckI;
  _trangtrong2State(this.deckI);
  late final deckCard =
      userFlashCard.where((Card) => Card.deck.contains(deckI)).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        // foregroundColor: Colors.amber,
        // backgroundColor: Colors.red,
        title: Text('Danh sách từ vựng'),
      ),
      drawer: Drawer(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Center(
              child: Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.star)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: Center(child: Text('Tiếng Nhật chuyên ngành IT'))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: Center(child: Text('Nghe'))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: Center(child: Text('Nói'))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: Center(child: Text('Đọc '))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: MaterialApp(title: 'Viết')),
            ],
          )),
        ),
      ),
      body: Container(
        child: Center(
          child: deckCard.length <= 0
              ? const Text('Không có từ trong deck')
              : ListView.builder(
                  itemCount: userFlashCard.length,
                  itemBuilder: (ctx, i) => ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          child: Card(
                            color: Color.fromARGB(255, 243, 240, 240),
                            shadowColor: Color.fromARGB(117, 243, 240, 240),
                            surfaceTintColor:
                                Color.fromARGB(255, 226, 202, 135),
                            child: Column(
                              children: [
                                Text(
                                  deckCard[i].front,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  deckCard[i].hiraganaReading,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  deckCard[i].hanChineseReading,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  deckCard[i].meaning,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  deckCard[i].example,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 130, 131, 126),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: (() {
                      // Detail Page
                    }),
                  ),
                ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (_) => addWordScreen()))
              .then((value) => setState(() {}));
          ;
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 60,
        ),
      ),
    );
    ;
  }
}
