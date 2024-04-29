import "package:flutter/material.dart";
import "package:project_1/DiceRoll.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class MyWidget extends StatelessWidget {
  const MyWidget(this.text, this.colors, {super.key});
  final String text;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 224, 130, 1),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colors, begin: startAlignment, end: endAlignment),
          ),
          child: const Center(child: DiceRoller()),
        ),
      ),
    );
  }
}

class NewText extends StatelessWidget {
  const NewText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("This is Second Text",
        style: TextStyle(
            fontSize: 28,
            color: Colors.lightBlue,
            fontWeight: FontWeight.w900));
  }
}
