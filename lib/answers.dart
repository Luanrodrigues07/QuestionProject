import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() Onselected;

  Answer(this.text, this.Onselected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: Onselected,
      ),
    );
  }
}
