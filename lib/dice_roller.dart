import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll=2;

  void rollDice(){
    setState(() {
      currentDiceRoll= Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20,),
            
            Center(
              child: ElevatedButton(
                onPressed: rollDice,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Icon(Icons.play_circle,color: Colors.indigo,size: 34,),
                ),
                style: ElevatedButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 20,),
                  foregroundColor: Colors.indigo,
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 248, 252, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )
                ),
                ),
            ),//child: const Text('Roll Dice'),)
            ],);
  }
}