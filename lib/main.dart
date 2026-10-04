import 'package:flutter/material.dart';
import 'package:scattered_words/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Colors.teal,
            Colors.tealAccent,
          ],
        ),
      ),
    ),
  );
}
