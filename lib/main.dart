import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Diceapp());
}

class Diceapp extends StatelessWidget {
  Diceapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DiceStructure();
  }
}

class DiceStructure extends StatefulWidget {
  DiceStructure({super.key});

  @override
  State<DiceStructure> createState() => _DiceStructureState();
}

class _DiceStructureState extends State<DiceStructure> {
  var randNum = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 136, 177, 219),
              Color.fromARGB(255, 53, 88, 141),
              Color.fromARGB(255, 45, 92, 150)
              
            ])
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('image/dice-$randNum.png')),
              Card(
                color: const Color.fromARGB(255, 171, 174, 190),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      randNum = randomNumber(randNum);
                    });
                  },
                  child: const Text(
                    "Press",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

int randomNumber(int randNum) {
  randNum = Random().nextInt(6) + 1;
  return randNum;
}
