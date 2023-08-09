import 'package:flutter/material.dart';

class BuildTextFieldCommon extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?) validator;
  final bool enabled;

  const BuildTextFieldCommon({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.validator,
    this.enabled = true, //optional parameter
  });

  @override
  // ignore: library_private_types_in_public_api
  _BuildTextFieldCommonState createState() => _BuildTextFieldCommonState();
}

class _BuildTextFieldCommonState extends State<BuildTextFieldCommon> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 9,
                offset: const Offset(2, 2),
                color: const Color(0xFFFFFFFF).withOpacity(1),
              ),
            ],
          ),
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.obscureText,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.grey.shade500),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1.0),
                borderSide: BorderSide(color: Color.fromARGB(55, 45, 90, 138)),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            focusNode: _focusNode,
            enabled: widget.enabled,
          ),
        ),
      ],
    );
  }
}
