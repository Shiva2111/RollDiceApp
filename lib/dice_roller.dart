import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;

  void rolldice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  
  }
  @override
  Widget build(context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
              children: [
              Image.asset(
                'assets/images/dice-$currentDiceRoll.png',
              width: 250 ,
              ),
              const SizedBox(height: 20,
              ),
              
              ElevatedButton(
                onPressed: rolldice, 
                style: ElevatedButton.styleFrom(
                  // padding: const EdgeInsets.only(
                  //   top: 20,
                  //   ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                ),
                 textStyle: const TextStyle(fontSize: 25)),
                child: const Text('Roll the Dice!!!'),
                )
              ],
              );
  }
}