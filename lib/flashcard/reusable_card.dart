import 'all_constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.text,
    required this.likeText,
    required this.knowText,
  });
  final Container text;
  final IconButton likeText;
  final OutlinedButton knowText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 7,
            shadowColor: Colors.grey,
            child: Container(
              width: double.infinity,
              height: 400,
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  likeText,
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: text,
                    ),
                  ),
                  Positioned(bottom: 10, right: 10, child: knowText)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
