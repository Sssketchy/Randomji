import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var activeDiceImage = 'assets/emojis/emoji1.png';

  void rollDice() {
    setState(() {
      var diceRoll = randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/emojis/emoji$diceRoll.png';
    });
  }

  @override
  Widget build(ctx) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: rollDice,
          icon: Image.asset(activeDiceImage, width: 200),
        ),
        // TextButton(
        //   onPressed: rollDice,
        //   style: TextButton.styleFrom(
        //     padding: EdgeInsets.only(top: 30),
        //     foregroundColor: Colors.white,
        //     textStyle: TextStyle(fontSize: 28),
        //   ),
        //   child: Text('Click'),
        // ),
      ],
    );
  }
}
