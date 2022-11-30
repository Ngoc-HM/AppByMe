import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'pages/home_page.dart';

// void main1() async {
//   await Hive.initFlutter();

//   // open a box
//   var box = await Hive.openBox('mybox');
//   runApp(MaterialApp(home: MyApp12()));
// }

class MyApp12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
