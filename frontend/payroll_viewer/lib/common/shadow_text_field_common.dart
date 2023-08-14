import 'package:flutter/material.dart';

class BuildShadowedTextFieldCommon extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final bool obscureText;
  final String? Function(String?) validator;
  final bool enabled;

  const BuildShadowedTextFieldCommon({
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    required this.validator,
    this.enabled = true,
  });

  @override
  _BuildShadowedTextFieldCommonState createState() =>
      _BuildShadowedTextFieldCommonState();
}

class _BuildShadowedTextFieldCommonState
    extends State<BuildShadowedTextFieldCommon> {
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
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 7.0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.obscureText,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: widget.hintText,
              labelText: widget.labelText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: TextStyle(color: Colors.black),
              hintStyle: TextStyle(color: Colors.grey.shade500),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xFFD1DBE5)),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
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
