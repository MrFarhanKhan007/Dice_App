import "package:flutter/material.dart";

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
                colors: colors,
                begin: startAlignment,
                end: endAlignment),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                const NewText()
              ],
            ),
          ),
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
