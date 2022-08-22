import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Red & White"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: "            G",
              style: const TextStyle(
                color: Colors.green,
                fontSize: 25,
                letterSpacing: 2,
              ),
              children: [
                const TextSpan(
                  text: "R",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                const TextSpan(
                  text: "APHICS\n",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: "\n    FLUTT",
                  style: TextStyle(
                    color: Colors.blueAccent.shade700,
                  ),
                ),
                const TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: "R\n",
                  style: TextStyle(
                    color: Colors.blueAccent.shade700,
                  ),
                ),
                const TextSpan(
                  text: "\n         AN",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                const TextSpan(
                  text: "D",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                const TextSpan(
                  text: "ROID\n",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: "\nDESIGN",
                  style: TextStyle(
                    color: Colors.amber.shade700,
                  ),
                ),
                const TextSpan(
                  text: " &",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: " DEVELOP\n",
                  style: TextStyle(
                    color: Colors.amber.shade700,
                  ),
                ),
                const TextSpan(
                  text: "\n           W",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: "EB\n",
                  style: TextStyle(
                    color: Colors.blueAccent.shade700,
                  ),
                ),
                const TextSpan(
                  text: "\n       FAS",
                  style: TextStyle(
                    color: Colors.yellowAccent,
                  ),
                ),
                const TextSpan(
                  text: "H",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                const TextSpan(
                  text: "ION\n",
                  style: TextStyle(
                    color: Colors.yellowAccent,
                  ),
                ),
                TextSpan(
                  text: "\n ANIMAT",
                  style: TextStyle(
                    color: Colors.teal.shade700,
                  ),
                ),
                const TextSpan(
                  text: "I",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: "ON\n",
                  style: TextStyle(
                    color: Colors.teal.shade700,
                  ),
                ),
                TextSpan(
                  text: "\n            I",
                  style: TextStyle(
                    color: Colors.blueAccent.shade700,
                  ),
                ),
                const TextSpan(
                  text: "T",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: "A-CS+\n",
                  style: TextStyle(
                    color: Colors.blueAccent.shade700,
                  ),
                ),
                TextSpan(
                  text: "\n     GAM",
                  style: TextStyle(
                    color: Colors.amberAccent.shade700,
                  ),
                ),
                const TextSpan(
                    text: "E",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ))
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
