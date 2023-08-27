import 'package:flutter/material.dart';
import 'dart:math';

class Roller extends StatefulWidget {
  const Roller({super.key});

  @override
  State<Roller> createState(){
    return _RollarState();
  }
}

class _RollarState extends State<Roller>{
  final rand = Random();
  var activeDiceImage = 'assets/images/dice-5.png';
  void rollDice() {
    int d = rand.nextInt(6)+1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$d.png';
    }); 
  }
  @override
  Widget build(contex){
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(activeDiceImage,width: 200,),
            const SizedBox(height: 30),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
              ),
              child: const Text('Roll Dice'),
            ),  
          ],
        );
  }
}