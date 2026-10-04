import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scattered_words/page_title.dart';

final randomizer = Random();

class RandomWord extends StatefulWidget {
  const RandomWord({super.key});

  @override
  State<RandomWord> createState() {
    return _RandomWord();
  }
}

class _RandomWord extends State<RandomWord> {
  int currentNumWord = 1;

  void changeWordImage() {
    setState(() {
      currentNumWord = randomizer.nextInt(10) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PageTitle(text: 'Scattered Words'),

        SizedBox(
          height: 20,
        ),

        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('assets/images/word_$currentNumWord.png'),
        ),

        SizedBox(
          height: 20,
        ),

        TextButton(
          onPressed: () => changeWordImage(),

          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 241, 241, 90),
            foregroundColor: Color.fromARGB(255, 81, 105, 117),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),

          child: Text(
            'Random Word',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
