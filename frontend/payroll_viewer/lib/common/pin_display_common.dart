import 'package:flutter/material.dart';

class PinDisplay extends StatelessWidget {
  final String pin;
  final int maxLength;

  PinDisplay({required this.pin, this.maxLength = 4});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(maxLength, (index) {
        bool hasValue = index < pin.length;
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: hasValue ? Color(0xFF4890D2) : Colors.white,
            border: Border.all(color: Color(0xFF4890D2)),
          ),
        );
      }),
    );
  }
}
