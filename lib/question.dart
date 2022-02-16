import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // take full width of screen
      margin: EdgeInsets.all(10),
      child: Text(
        // By default, Text() occupies the space of content only. Hence we wrap it around a container for center alignment.
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
