import 'package:flutter/material.dart';

class PinButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  PinButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 15.0)),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10.0),
          shape: CircleBorder(),
          primary: Colors.white, // Set background color to transparent
          onPrimary: Colors.black, // Set text color to black
          side: BorderSide(width: 1.0, color: Color(0xFFD1DBE5)), // Add black solid border
        ),
      ),
    );
  }
}
