import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final VoidCallback selectHandler;
  final void Function() selectHandler;
  final String answerText;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, // default
          onPrimary: Colors.white, // default
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
