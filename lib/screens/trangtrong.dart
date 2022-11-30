import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../errorfinal.dart';
import '../bodyfinal.dart';
import '../flashcardsc.dart';
import '/screens/favorite.dart';
import 'package:provider/provider.dart';
import '../models/favorite.dart';
import '/screens/home_page.dart';

class fl3 extends StatelessWidget {
  final String deckIdu;

  fl3(this.deckIdu);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          HomePage.routeName: (context) => HomePage(deckIdu),
          FavoritesPage.routeName: (context) => FavoritesPage(),
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
