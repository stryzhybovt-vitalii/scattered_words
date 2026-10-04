import 'package:flutter/material.dart';
import 'package:scattered_words/random_word.dart';

const gradientStart = AlignmentGeometry.topRight;
const gradientEnd = AlignmentGeometry.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: gradientStart,
          end: gradientEnd,
        ),
      ),
      child: Center(
        child: RandomWord(),
      ),
    );
  }
}
