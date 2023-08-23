import 'package:flutter/material.dart';

class PayslipItem extends StatefulWidget {
  const PayslipItem({super.key});

  @override
  State<PayslipItem> createState() => _PayslipItemState();
}

class _PayslipItemState extends State<PayslipItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Color.fromARGB(255, 255, 0, 0)),
      ),
    );
  }
}