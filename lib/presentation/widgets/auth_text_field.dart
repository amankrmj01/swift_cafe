import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final String text;
  final bool obscureText;
  final TextEditingController controller;
  const AuthTextField(
      {super.key,
      required this.text,
      required this.obscureText,
      required this.controller});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        label: Text(widget.text),
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 0,
          shadows: [
            Shadow(
              blurRadius: 10.0,
              color: Colors.white,
              offset: Offset(0, 0),
            ),
          ],
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
