import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text; // text won't be changed here after

  @override
  Widget build(ctx) {
    return Text(
      text,
      style: TextStyle(color: Color.fromARGB(255, 255, 0, 0), fontSize: 60),
    );
  }
}
