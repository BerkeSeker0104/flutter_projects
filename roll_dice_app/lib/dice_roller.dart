import 'dart:math';
import 'package:flutter/material.dart';

final randomizer =
    Random(); // bunun sayesinde her seferinde bellekte yer kaplamayacak.

class diceRoller extends StatefulWidget {
  const diceRoller({super.key});
  @override
  State<diceRoller> createState() {
    return _diceRollerState();
  }
}

class _diceRollerState extends State<diceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    print('changing image...'); //bunu kodumuz calisiyor mu test ediyoruz
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        //'SizedBox' alt widget eklemek için ya da bosluk bırakmak icin kullanıyoruz
        // goruntu ile button arasında widget varmıs gibi bosluk olacak
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              // bununla dolgu ekledi, görsel ile arasına boşluk koyduk.
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
