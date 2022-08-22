import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("🛍List of Fruits"),
          backgroundColor: Colors.teal[300],
          centerTitle: true,
        ),
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: "🍎Apple",
              style: TextStyle(
                fontSize: 40,
                color: Colors.red,
                letterSpacing: 5,
              ),
              children: [
                TextSpan(
                  text: "\n🍇Greps",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.purpleAccent,
                    letterSpacing: 5,
                  ),
                ),
                TextSpan(
                  text: "\n🍒Cherry",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.purple,
                    letterSpacing: 5,
                  ),
                ),
                TextSpan(
                  text: "\n🍓Strawberry",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.pink,
                    letterSpacing: 5,
                  ),
                ),
                TextSpan(
                  text: "\n🥭Mango",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.amber,
                    letterSpacing: 5,
                  ),
                ),
                TextSpan(
                  text: "\n🍍Pineapple",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.green,
                    letterSpacing: 5,
                  ),
                ),
                TextSpan(
                  text: "\n🍋Lemon",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.yellow,
                    letterSpacing: 5,
                  ),
                ),
                TextSpan(
                  text: "\n🍉Watermelon",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.lightGreen,
                    letterSpacing: 5,
                  ),
                ),
                TextSpan(
                  text: "\n🥥Coconut",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.brown,
                    letterSpacing: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
