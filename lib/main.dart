import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Diceapp());
}

class Diceapp extends StatelessWidget {
  const Diceapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DiceStructure();
  }
}

class DiceStructure extends StatefulWidget {
  const DiceStructure({super.key});

  @override
  State<DiceStructure> createState() => _DiceStructureState();
}

class _DiceStructureState extends State<DiceStructure> {
  var randNum = 1;
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    var randNum = Random();
    randNum.nextInt(6) + 1;
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Row(
          children: [
            Image(image: AssetImage('/dice-images/dice-$randNum.png')),
          ],
        )),
      ),
    );
  }
}


